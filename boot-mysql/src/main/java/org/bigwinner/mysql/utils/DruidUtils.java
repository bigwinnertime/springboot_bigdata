package org.bigwinner.mysql.utils;

import com.alibaba.druid.pool.DruidDataSourceFactory;
import com.google.common.collect.Maps;
import org.apache.shardingsphere.api.config.sharding.ShardingRuleConfiguration;
import org.apache.shardingsphere.api.config.sharding.TableRuleConfiguration;
import org.apache.shardingsphere.api.config.sharding.strategy.StandardShardingStrategyConfiguration;
import org.apache.shardingsphere.shardingjdbc.api.ShardingDataSourceFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import javax.sql.DataSource;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;
import java.util.Properties;

/**
 * @author: bigwinner
 * @date: 2021/1/10 6:39 下午
 * @version: 1.0.0
 * @description: Druid连接池工具类
 */
@Component
public class DruidUtils {
    private static final Logger LOGGER = LoggerFactory.getLogger(DruidUtils.class);

    /** 静态数据源变量，供全局操作且用于静态代码块加载资源。 **/
    private static DataSource dataSource;
    private static Properties properties;

    /** 静态变量，供全局操作 **/
    private static String dbName;
    public static String tableName;
    private static String tableNamePostfix;
    private static String tableNamePrefix;
    private static String shardingTableColumn;
    private static String[] shardingNames;
    /**
     * 工具类，私有化无参构造函数
     */
    private DruidUtils() {
    }
    // 静态代码块，加载配置文件。
    static {
        InputStream inStream = Thread.currentThread().getContextClassLoader().getResourceAsStream("application-dev.yml");
        properties = new Properties();
        try {
            properties.load(inStream);
            // druid 初始化数据库连接资源
            dataSource = DruidDataSourceFactory.createDataSource(properties);
            dbName = properties.getProperty("dbname");
            tableNamePostfix = properties.getProperty("tablename-suffix");
            tableNamePrefix = properties.getProperty("tablename-prefix");
            shardingTableColumn = properties.getProperty("sharding-column");
            shardingNames = properties.getProperty("sharding-names").split(",");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void initShardingDataSource() {
        Map<String, DataSource> dataSourceMap = Maps.newHashMap();
        dataSourceMap.put(dbName, dataSource);
        String monthStr = new SimpleDateFormat("yyyyMM").format(new Date());
        tableName = tableNamePrefix + monthStr;
        String actualDataNodes = dbName + "." + tableName + tableNamePostfix;
        try {
            // 配置表规则
            TableRuleConfiguration tableRuleConfiguration = new TableRuleConfiguration(tableName, actualDataNodes);
            // 配置分表策略
            tableRuleConfiguration.setTableShardingStrategyConfig(new StandardShardingStrategyConfiguration(shardingTableColumn, new TimeShardingStrategy(tableNamePrefix, shardingNames)));
            // 配置分片规则
            ShardingRuleConfiguration shardingRuleConfiguration = new ShardingRuleConfiguration();
            shardingRuleConfiguration.getTableRuleConfigs().add(tableRuleConfiguration);
            dataSource = ShardingDataSourceFactory.createDataSource(dataSourceMap, shardingRuleConfiguration, properties);

        } catch (SQLException e) {
            e.printStackTrace();
            LOGGER.error("==========配置分片算法失败=========", e);
        }
    }
    /**
     * 创建数据库连接实例
     * @return 数据库连接实例 connection
     */
    public static Connection getConnection() {
        try {
            return dataSource.getConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        throw new RuntimeException("获取数据库连接异常");
    }

    /**
     * 释放数据库连接 connection 到数据库缓存池，并关闭 rSet 和 pStatement 资源
     * @param rSet 数据库处理结果集
     * @param pStatement 数据库操作语句
     * @param connection 数据库连接对象
     */
    public static void releaseSqlConnection(ResultSet rSet, PreparedStatement pStatement, Connection connection) {
        try {
            if (rSet != null) {
                rSet.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (pStatement != null) {
                    pStatement.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            } finally {
                try {
                    if (connection != null) {
                        connection.close();
                    }
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}

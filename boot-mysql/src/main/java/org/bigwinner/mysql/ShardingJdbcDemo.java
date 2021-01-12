package org.bigwinner.mysql;

import cn.hutool.json.JSONObject;
import lombok.extern.slf4j.Slf4j;
import org.bigwinner.mysql.utils.DruidUtils;
import org.bigwinner.mysql.utils.JdbcUtils;
import org.springframework.stereotype.Component;


import java.sql.Connection;
import java.sql.PreparedStatement;

/**
 * @author: bigwinner
 * @date: 2021/1/12 8:50 下午
 * @version: 1.0.0
 * @description: 数据库分表demo
 */
@Slf4j
@Component
public class ShardingJdbcDemo {
    private static JdbcUtils.TableId tableId;
    private static JdbcUtils.TableDefinition tableDefinition;

    public void shardingJDBCData(JSONObject message){
        Connection conn = null;
        PreparedStatement pStatement = null;
        try {
            // 1. 获得数据库连接
            conn = DruidUtils.getConnection();
            conn.setAutoCommit(false);
            // 2. 获取table元数据对象
            tableId = JdbcUtils.getTableId(conn, DruidUtils.tableName);
            // 3. 获取table详细信息对象
            tableDefinition = JdbcUtils.getTableDefinition(conn, tableId);
            // 4. 拼接sql语句
            String sql = JdbcUtils.buildInsertSql(tableDefinition);
            log.info("sql: {}", sql);
            // 5. 创建预编译对象
            pStatement = JdbcUtils.buildInsertStatement(conn, sql);
            // 6. 绑定数据内容
            JdbcUtils.bindValue(pStatement, tableDefinition, message);
            // 7. 执行操作
            pStatement.addBatch();
            pStatement.executeBatch();
            conn.commit();
            pStatement.clearBatch();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DruidUtils.releaseSqlConnection(null, pStatement, conn);
        }
    }
}

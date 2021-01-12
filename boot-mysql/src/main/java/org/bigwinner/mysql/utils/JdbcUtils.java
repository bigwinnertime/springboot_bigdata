package org.bigwinner.mysql.utils;

import cn.hutool.json.JSONObject;
import com.google.common.collect.Lists;
import lombok.*;

import java.sql.*;
import java.util.List;
import java.util.stream.IntStream;

import static com.google.common.base.Preconditions.checkState;

/**
 * @author: bigwinner
 * @date: 2021/1/10 6:39 下午
 * @version: 1.0.0
 * @description: jdbc工具类
 */
public class JdbcUtils {
    @Data(staticConstructor = "of")
    @Setter
    @Getter
    @EqualsAndHashCode
    @ToString
    public static class TableId {
        private final String catalogName;
        private final String schemaName;
        private final String tableName;
    }

    @Data(staticConstructor = "of")
    @Setter
    @Getter
    @EqualsAndHashCode
    @ToString
    public static class ColumnId {
        private final TableId tableId;
        private final String name;
        // SQL type from java.sql.Types
        private final int type;
        private final String typeName;
        // column position in table
        private final int position;
    }

    @Data(staticConstructor = "of")
    @Setter
    @Getter
    @EqualsAndHashCode
    @ToString
    public static class TableDefinition {
        private final TableId tableId;
        private final List<ColumnId> columns;
    }

    /**
     * 获取table元信息
     * @param connection 数据库连接
     * @param tableName 表名称
     * @return 封装table元数据对象
     * @throws Exception
     */
    public static TableId getTableId(Connection connection, String tableName) throws Exception {
        DatabaseMetaData metadata = connection.getMetaData();
        try (ResultSet rs = metadata.getTables(null, null, tableName, new String[]{"TABLE"})) {
            if (rs.next()) {
                String catalogName = rs.getString(1);
                String schemaName = rs.getString(2);
                String gotTableName = rs.getString(3);
                checkState(tableName.equals(gotTableName),
                        "TableName not match: " + tableName + " Got: " + gotTableName);
                return TableId.of(catalogName, schemaName, tableName);
            } else {
                throw new Exception("Not able to find table: " + tableName);
            }
        }
    }

    /**
     * 获取table详细描述信息
     * @param connection 数据库连接
     * @param tableId 封装table元数据信息对象
     * @return 封装table详细描述信息对象
     * @throws Exception
     */
    public static TableDefinition getTableDefinition(Connection connection, TableId tableId) throws Exception {
        TableDefinition table = TableDefinition.of(tableId, Lists.newArrayList());

        try (ResultSet rs = connection.getMetaData().getColumns(
                tableId.getCatalogName(),
                tableId.getSchemaName(),
                tableId.getTableName(),
                null
        )) {
            while (rs.next()) {
                final String columnName = rs.getString(4);

                final int sqlDataType = rs.getInt(5);
                final String typeName = rs.getString(6);
                final int position = rs.getInt(17);

                table.columns.add(ColumnId.of(tableId, columnName, sqlDataType, typeName, position));
            }
            return table;
        }
    }

    /**
     * 拼接sql语句
     * @param table 封装table详细信息对象
     * @return sql字符串
     */
    public static String buildInsertSql(TableDefinition table) {
        StringBuilder builder = new StringBuilder();
        builder.append("INSERT INTO ");
        builder.append(table.tableId.getTableName());
        builder.append("(");

        table.columns.forEach(columnId -> builder.append(columnId.getName()).append(","));
        builder.deleteCharAt(builder.length() - 1);

        builder.append(") VALUES(");
        IntStream.range(0, table.columns.size() - 1).forEach(i -> builder.append("?,"));
        builder.append("?)");

        return builder.toString();
    }

    /**
     * 创建sql预编译对象
     * @param connection 数据库连接
     * @param insertSQL sql语句
     * @return sql预编译对象
     * @throws SQLException
     */
    public static PreparedStatement buildInsertStatement(Connection connection, String insertSQL) throws SQLException {
        return connection.prepareStatement(insertSQL);
    }

    /**
     * 绑定数据内容
     * @param statement 预编译对象
     * @param tableDefinition  封装table详细信息的对象
     * @param message 数据内容
     * @throws Exception
     */
    public static void bindValue(PreparedStatement statement, TableDefinition tableDefinition,
                                 JSONObject message) throws Exception {
        int index = 1;
        for (ColumnId columnId : tableDefinition.getColumns()) {
            String colName = columnId.getName();
            Object obj = message.get(colName);
            setColumnValue(statement, index++, obj);
        }
    }

    /**
     * 组装列和列值
     * @param statement 预编译对象
     * @param index 列所在位置
     * @param value 值
     * @throws Exception
     */
    private static void setColumnValue(PreparedStatement statement, int index, Object value) throws Exception {
        if (value instanceof Integer) {
            statement.setInt(index, (Integer) value);
        } else if (value instanceof Long) {
            statement.setLong(index, (Long) value);
        } else if (value instanceof Double) {
            statement.setDouble(index, (Double) value);
        } else if (value instanceof Float) {
            statement.setFloat(index, (Float) value);
        } else if (value instanceof Boolean) {
            statement.setBoolean(index, (Boolean) value);
        } else if (value instanceof String) {
            if ("".equals(((String) value).trim())) {
                //空值统一处理为null入库
                statement.setString(index, null);
            } else {
                statement.setString(index, (String )value);
            }
        } else if (value instanceof Short) {
            statement.setShort(index, (Short) value);
        } else if (null == value) {
            //空值统一处理为null入库
            statement.setString(index, null);
        } else {
            throw new Exception("Not support value type, need to add it. ");
        }
    }
}

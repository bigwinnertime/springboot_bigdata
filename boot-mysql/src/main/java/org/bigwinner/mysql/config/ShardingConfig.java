package org.bigwinner.mysql.config;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

/**
 * @author: bigwinner
 * @date: 2021/1/10 10:50 下午
 * @version: 1.0.0
 * @description: Sharding配置类
 */
@Data
@Component
@ConfigurationProperties(prefix = "sharding.jdbc.config.sharding.tables")
public class ShardingConfig {
    private String tablenamePrefix;
    private String tablenameSuffix;
    private String shardingColumn;
}

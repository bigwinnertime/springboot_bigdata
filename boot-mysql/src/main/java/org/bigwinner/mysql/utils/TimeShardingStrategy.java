package org.bigwinner.mysql.utils;

import cn.hutool.core.util.ArrayUtil;
import cn.hutool.core.util.StrUtil;
import org.apache.shardingsphere.api.sharding.standard.PreciseShardingAlgorithm;
import org.apache.shardingsphere.api.sharding.standard.PreciseShardingValue;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.Collection;

/**
 * @author: bigwinner
 * @date: 2021/1/11 1:35 下午
 * @version: 1.0.0
 * @description: 时间分片算法
 */
public class TimeShardingStrategy implements PreciseShardingAlgorithm {
    private static final Logger logger = LoggerFactory.getLogger(TimeShardingStrategy.class);
    private String tablePrefix;
    private String [] shardingNames;
    private int shardingTableNum;
    String nowMonth;
    public TimeShardingStrategy(String tablePrefix, String[] shardingNames) {
        this.tablePrefix = tablePrefix;
        this.shardingNames = shardingNames;
        this.shardingTableNum = shardingNames.length;
    }
    @Override
    public String doSharding(Collection collection, PreciseShardingValue preciseShardingValue) {
        String shardingValue = String.valueOf(preciseShardingValue.getValue());
        if (StrUtil.isBlank(shardingValue)) {
            logger.error("未获取到时间时间分片策略值！");
            return null;
        }
        nowMonth = StrUtil.sub(shardingValue, 0, 4) + StrUtil.sub(shardingValue, 5, 7);
        if (ArrayUtil.isNotEmpty(shardingNames)) {
            String suffix = "_" + shardingNames[Math.abs(shardingValue.hashCode()) % shardingTableNum];
            logger.debug("要写入的分区表为：{}", tablePrefix + nowMonth + suffix);
            return tablePrefix + nowMonth + suffix;
        } else {
            logger.warn("请设置分区值！");
            return tablePrefix + nowMonth;
        }
    }
}

package org.bigwinner.mysql.dao.mapper;

import com.baidu.fsg.uid.worker.entity.WorkerNodeEntity;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

/**
 * @author: bigwinner
 * @date: 2021/1/14 3:28 下午
 * @version: 1.0.1
 * @description: workerNode mapper
 */
@Repository
public interface WorkerNodeMapper extends BaseMapper{
    /**
     * Get {@link WorkerNodeEntity} by node host
     *
     * @param host
     * @param port
     * @return
     */
    WorkerNodeEntity getWorkerNodeByHostPort(@Param("host") String host, @Param("port") String port);

    /**
     * Add {@link WorkerNodeEntity}
     *
     * @param workerNodeEntity
     */
    void addWorkerNode(WorkerNodeEntity workerNodeEntity);
}

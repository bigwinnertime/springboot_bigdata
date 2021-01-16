package org.bigwinner.mysql.service;

import org.springframework.stereotype.Service;

/**
 * @author: bigwinner
 * @date: 2021/1/14 12:06 下午
 * @version: 1.0.0
 * @description: 分布式唯一IDService层抽象类
 */
@Service
public interface UidService {

    /**
     * @return uid
     *
     */
    long getUid();
}

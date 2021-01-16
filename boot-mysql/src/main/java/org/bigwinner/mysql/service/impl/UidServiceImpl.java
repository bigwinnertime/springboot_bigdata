package org.bigwinner.mysql.service.impl;

import com.baidu.fsg.uid.UidGenerator;
import com.baidu.fsg.uid.impl.CachedUidGenerator;
import org.bigwinner.mysql.service.UidService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * @author: bigwinner
 * @date: 2021/1/14 12:06 下午
 * @version: 1.0.0
 * @description: 分布式唯一IDService层实现类
 */
@Service
public class UidServiceImpl implements UidService {
    @Autowired
    private UidGenerator uidGenerator;
    @Override
    public long getUid() {
        return uidGenerator.getUID();
    }

}

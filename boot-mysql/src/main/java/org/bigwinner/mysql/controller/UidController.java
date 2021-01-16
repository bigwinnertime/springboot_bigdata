package org.bigwinner.mysql.controller;

import org.bigwinner.mysql.service.UidService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author: bigwinner
 * @date: 2021/1/14 12:05 下午
 * @version: 1.0.0
 * @description: 分布式唯一IDController层
 */
@RestController
public class UidController {
    @Autowired
    private UidService uidService;

    @GetMapping("/uidGenerator")
    public String UidGenerator() {
        return String.valueOf(uidService.getUid());
    }

}

package org.bigwinner.mysql.config;

import com.baomidou.mybatisplus.extension.plugins.PaginationInterceptor;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.transaction.annotation.EnableTransactionManagement;

/**
 * @author: bigwinner
 * @date: 2021/1/16 9:15 下午
 * @version: 1.0.0
 * @description: MybatisPlus配置类
 */
@Configuration
@EnableTransactionManagement
@MapperScan("org.bigwinner.mysql.dao.mapper")
public class MybatisPlusConfig {

    /**
     * 分页插件
     * @author bigwinner
     * @return com.baomidou.mybatisplus.extension.plugins.PaginationInterceptor
     */
    @Bean
    public PaginationInterceptor paginationInterceptor() {
        return new PaginationInterceptor();
    }
}

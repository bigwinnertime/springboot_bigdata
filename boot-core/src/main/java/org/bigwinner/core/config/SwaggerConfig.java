package org.bigwinner.core.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

/**
 * @author: bigwinner
 * @date: 2020/10/10 3:36 下午
 * @version: 1.0.0
 * @description: 集成swagger2
 */
@Configuration
@EnableSwagger2
public class SwaggerConfig {
    @Bean
    public Docket createRestApi() {
        return new Docket(DocumentationType.SWAGGER_2)
                .apiInfo(apiInfo())
                .select()
                // 根据实际情况自行修改包路径
                .apis(RequestHandlerSelectors.basePackage("org.bigwinner"))
                .paths(PathSelectors.any())
                .build();
    }

    private ApiInfo apiInfo() {
        return new ApiInfoBuilder()
                // 标题
                .title("某某项目接口文档")
                // 描述
                .description("swagger2接口文档使用演示")
                // 版本
                .version("1.0")
                // 许可证
                .license("MIT")
//                // 许可证地址
//                .licenseUrl("www.xx.com")
//                // 服务端地址
//                .termsOfServiceUrl("https://www.cnblogs.com/zhixie/")
//                // 联系信息
//                .contact(new Contact("java旅途","https://www.cnblogs.com/zhixie/","binzh303@163.com"))
                .build();
    }
}

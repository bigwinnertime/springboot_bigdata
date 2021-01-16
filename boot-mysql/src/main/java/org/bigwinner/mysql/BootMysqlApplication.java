package org.bigwinner.mysql;

import cn.hutool.json.JSONUtil;
import org.bigwinner.mysql.service.impl.UidServiceImpl;
import org.bigwinner.mysql.utils.DruidUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @author lsl_mac
 */
@SpringBootApplication()
public class BootMysqlApplication {
	private static ShardingJdbcDemo shardingJdbcDemo;
	private static UidServiceImpl uidService;

	@Autowired
	public BootMysqlApplication(ShardingJdbcDemo demo, UidServiceImpl uid) {
		BootMysqlApplication.shardingJdbcDemo = demo;
		BootMysqlApplication.uidService = uid;

	}

	public static void main(String[] args) {
		//设置日期格式
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		SpringApplication.run(BootMysqlApplication.class, args);
		// 1. 初始化Sharding数据源
		DruidUtils.initShardingDataSource();
		while (true) {
			String timeStr = df.format(new Date());
			String jsonStr = "{\"LOG_ID\":\""+ uidService.getUid() +"\",\"IDENTITY_NAME\":\"aaaaa\",\"RESOURCE_KIND\":\"11\",\"RESOURCE_CODE\":\"22\",\"MODULE_ID\":\"bbbb\",\"MODULE_NAME\":\"cccc\",\"OPERATE_CONTENT\":\"ll\",\"OPERATE_TIME\":\""+ timeStr +"\"}";
			shardingJdbcDemo.shardingJDBCData(JSONUtil.parseObj(jsonStr));
			try {
				Thread.sleep(10000);
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
		}


	}

}

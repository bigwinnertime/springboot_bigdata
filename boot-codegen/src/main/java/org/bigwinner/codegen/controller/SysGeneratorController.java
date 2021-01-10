/*
 *    Copyright (constant) 2018-2025, gekft All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 * Redistributions of source code must retain the above copyright notice,
 * this list of conditions and the following disclaimer.
 * Redistributions in binary form must reproduce the above copyright
 * notice, this list of conditions and the following disclaimer in the
 * documentation and/or other materials provided with the distribution.
 * Neither the name of the pig4cloud.com developer nor the names of its
 * contributors may be used to endorse or promote products derived from
 * this software without specific prior written permission.
 * Author: gekft (wangiegie@gmail.com)
 */

package org.bigwinner.codegen.controller;

import cn.hutool.core.io.IoUtil;
import org.bigwinner.codegen.entity.GenConfig;
import org.bigwinner.codegen.service.SysGeneratorService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.AllArgsConstructor;
import org.springframework.http.HttpHeaders;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@RestController
@AllArgsConstructor
@RequestMapping("/generator")
@Api(tags = "代码生成")
public class SysGeneratorController {
	private final SysGeneratorService sysGeneratorService;
	/**
	 * 列表
	 *
	 * @param tableName 参数集
	 * @return 数据库表
	 */
//	@GetMapping("/page")
//	public R getPage(Page page, String tableName) {
//		return new R<>(sysGeneratorService.getPage(page, tableName));
//	}

	/**
	 * 生成代码
	 */
	@PostMapping("/code")
	@ApiOperation("代码自动生成")
	public void generatorCode(@RequestBody GenConfig genConfig, HttpServletResponse response) throws IOException {
		byte[] data = sysGeneratorService.generatorCode(genConfig);

		response.reset();
		response.setHeader(HttpHeaders.CONTENT_DISPOSITION, String.format("attachment; filename=%s.zip", genConfig.getTableName()));
		response.addHeader(HttpHeaders.CONTENT_LENGTH,  String.valueOf(data.length));
		response.setContentType("application/octet-stream; charset=UTF-8");

		IoUtil.write(response.getOutputStream(), Boolean.TRUE, data);
	}
}

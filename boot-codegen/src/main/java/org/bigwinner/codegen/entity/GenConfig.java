/*
 *    Copyright (constant) 2018-2025, lengleng All rights reserved.
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
 * Author: lengleng (wangiegie@gmail.com)
 */

package org.bigwinner.codegen.entity;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;


@Data
public class GenConfig {
	/**
	 * 包名
	 */
	@ApiModelProperty("包名")
	private String packageName;
	/**
	 * 作者
	 */
	@ApiModelProperty("作者")
	private String author;
	/**
	 * 模块名称
	 */
	@ApiModelProperty("模块名称")
	private String moduleName;
	/**
	 * 表前缀
	 */
	@ApiModelProperty("表前缀")
	private String tablePrefix;

	/**
	 * 表名称
	 */
	@ApiModelProperty("表名称")
	private String tableName;

	/**
	 * 表备注
	 */
	@ApiModelProperty("表备注")
	private String comments;
}

/*
 * Copyright 2005-2013 shopxx.net. All rights reserved.
 * Support: http://www.shopxx.net
 * License: http://www.shopxx.net/license
 */
package com.jk.model;

import java.io.Serializable;

/**
 * Entity - 参数组
 */
public class ParameterGroup implements Serializable {

	private static final long serialVersionUID = 4809009895239133350L;
	/**
     * id
	 */
	private  String id;

	//c创建时间
	private String create_date;
	//修改时间
	private String modify_date;
	//排序
	private String orders;
	/** 名称 */
	private String name;//基本参数

	//分类
	private String product_category;

	public String getId() {
		return id;
	}

	public String getCreate_date() {
		return create_date;
	}

	public String getModify_date() {
		return modify_date;
	}

	public String getOrders() {
		return orders;
	}

	public String getName() {
		return name;
	}

	public String getProduct_category() {
		return product_category;
	}

	public void setId(String id) {
		this.id = id;
	}

	public void setCreate_date(String create_date) {
		this.create_date = create_date;
	}

	public void setModify_date(String modify_date) {
		this.modify_date = modify_date;
	}

	public void setOrders(String orders) {
		this.orders = orders;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setProduct_category(String product_category) {
		this.product_category = product_category;
	}

	@Override
	public String toString() {
		return "ParameterGroup{" +
				"id='" + id + '\'' +
				", create_date='" + create_date + '\'' +
				", modify_date='" + modify_date + '\'' +
				", orders='" + orders + '\'' +
				", name='" + name + '\'' +
				", product_category='" + product_category + '\'' +
				'}';
	}
}
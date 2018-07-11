package com.jk.model;


import java.io.Serializable;

public class Product implements Serializable {

	private static final long serialVersionUID = -2745537383205883432L;
	/** 编号 */
	private String sn;

	/** 名称 */
	private String name;

	/** 商品分类 */
	private String protype;

	/*销售价*/
	private String xiaoshoujia;

	/*成本价*/
	private String chengbenjia;

	/*库存*/
	private String kecun;

    /*是否上架*/
	private String shangjia;

	/*创建日期*/
	private String createtime;


	public static long getSerialVersionUID() {
		return serialVersionUID;
	}

	public String getSn() {
		return sn;
	}

	public void setSn(String sn) {
		this.sn = sn;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getProtype() {
		return protype;
	}

	public void setProtype(String protype) {
		this.protype = protype;
	}

	public String getXiaoshoujia() {
		return xiaoshoujia;
	}

	public void setXiaoshoujia(String xiaoshoujia) {
		this.xiaoshoujia = xiaoshoujia;
	}

	public String getChengbenjia() {
		return chengbenjia;
	}

	public void setChengbenjia(String chengbenjia) {
		this.chengbenjia = chengbenjia;
	}

	public String getKecun() {
		return kecun;
	}

	public void setKecun(String kecun) {
		this.kecun = kecun;
	}

	public String getShangjia() {
		return shangjia;
	}

	public void setShangjia(String shangjia) {
		this.shangjia = shangjia;
	}

	public String getCreatetime() {
		return createtime;
	}

	public void setCreatetime(String createtime) {
		this.createtime = createtime;
	}

	@Override
	public String toString() {
		return "Product{" +
				"sn='" + sn + '\'' +
				", name='" + name + '\'' +
				", protype='" + protype + '\'' +
				", xiaoshoujia='" + xiaoshoujia + '\'' +
				", chengbenjia='" + chengbenjia + '\'' +
				", kecun='" + kecun + '\'' +
				", shangjia='" + shangjia + '\'' +
				", createtime='" + createtime + '\'' +
				'}';
	}
}
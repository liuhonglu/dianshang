package com.jk.model;

import java.io.Serializable;

/**
 * Created by Administrator on 2018/7/20 0020.
 */
public class KuaiDiDanmoban implements Serializable{

    private static final long serialVersionUID = 5859510082618326679L;
    private String id;

    private String kuaidiname;

    private String beizhu;

    private String shifoumoren;


    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getKuaidiname() {
        return kuaidiname;
    }

    public void setKuaidiname(String kuaidiname) {
        this.kuaidiname = kuaidiname;
    }

    public String getBeizhu() {
        return beizhu;
    }

    public void setBeizhu(String beizhu) {
        this.beizhu = beizhu;
    }

    public String getShifoumoren() {
        return shifoumoren;
    }

    public void setShifoumoren(String shifoumoren) {
        this.shifoumoren = shifoumoren;
    }

    @Override
    public String toString() {
        return "KuaiDiDanmoban{" +
                "id='" + id + '\'' +
                ", kuaidiname='" + kuaidiname + '\'' +
                ", beizhu='" + beizhu + '\'' +
                ", shifoumoren='" + shifoumoren + '\'' +
                '}';
    }
}

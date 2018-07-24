package com.jk.model;

import java.io.Serializable;

/**
 * Created by Administrator on 2018/7/21 0021.
 */
public class TuiHuiGuanLi implements Serializable {
    private static final long serialVersionUID = -6834718859882090803L;

    private String id;

    private String peisongfangshi;

    private String kuaididanid;

    private String yundanhao;

    private String fahuodianid;

    private String createdate;

    //快递单名字业务字段
    private String kuaidiname;
    //联系人业务字段
    private String lianxiren;


    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getPeisongfangshi() {
        return peisongfangshi;
    }

    public void setPeisongfangshi(String peisongfangshi) {
        this.peisongfangshi = peisongfangshi;
    }

    public String getKuaididanid() {
        return kuaididanid;
    }

    public void setKuaididanid(String kuaididanid) {
        this.kuaididanid = kuaididanid;
    }

    public String getYundanhao() {
        return yundanhao;
    }

    public void setYundanhao(String yundanhao) {
        this.yundanhao = yundanhao;
    }

    public String getFahuodianid() {
        return fahuodianid;
    }

    public void setFahuodianid(String fahuodianid) {
        this.fahuodianid = fahuodianid;
    }

    public String getCreatedate() {
        return createdate;
    }

    public void setCreatedate(String createdate) {
        this.createdate = createdate;
    }

    public String getKuaidiname() {
        return kuaidiname;
    }

    public void setKuaidiname(String kuaidiname) {
        this.kuaidiname = kuaidiname;
    }

    public String getLianxiren() {
        return lianxiren;
    }

    public void setLianxiren(String lianxiren) {
        this.lianxiren = lianxiren;
    }

    @Override
    public String toString() {
        return "TuiHuiGuanLi{" +
                "id='" + id + '\'' +
                ", peisongfangshi='" + peisongfangshi + '\'' +
                ", kuaididanid='" + kuaididanid + '\'' +
                ", yundanhao='" + yundanhao + '\'' +
                ", fahuodianid='" + fahuodianid + '\'' +
                ", createdate='" + createdate + '\'' +
                ", kuaidiname='" + kuaidiname + '\'' +
                ", lianxiren='" + lianxiren + '\'' +
                '}';
    }
}

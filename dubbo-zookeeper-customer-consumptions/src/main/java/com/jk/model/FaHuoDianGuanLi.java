package com.jk.model;

import java.io.Serializable;

/**
 * Created by Administrator on 2018/7/20 0020.
 */
public class FaHuoDianGuanLi implements Serializable{

    private static final long serialVersionUID = -3547438718688725096L;
    private String id;

    private String fahuodianname;

    private String lianxiren;

    private String regionname;

    private String sitedizhi;

    private String youbian;

    private String telephone;

    private String phone;

    private String moren;

    private String userid;

    //业务字段
    private String username;


    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getFahuodianname() {
        return fahuodianname;
    }

    public void setFahuodianname(String fahuodianname) {
        this.fahuodianname = fahuodianname;
    }

    public String getLianxiren() {
        return lianxiren;
    }

    public void setLianxiren(String lianxiren) {
        this.lianxiren = lianxiren;
    }

    public String getRegionname() {
        return regionname;
    }

    public void setRegionname(String regionname) {
        this.regionname = regionname;
    }

    public String getSitedizhi() {
        return sitedizhi;
    }

    public void setSitedizhi(String sitedizhi) {
        this.sitedizhi = sitedizhi;
    }

    public String getYoubian() {
        return youbian;
    }

    public void setYoubian(String youbian) {
        this.youbian = youbian;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getMoren() {
        return moren;
    }

    public void setMoren(String moren) {
        this.moren = moren;
    }


    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }


    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    @Override
    public String toString() {
        return "FaHuoDianGuanLi{" +
                "id='" + id + '\'' +
                ", fahuodianname='" + fahuodianname + '\'' +
                ", lianxiren='" + lianxiren + '\'' +
                ", regionname='" + regionname + '\'' +
                ", sitedizhi='" + sitedizhi + '\'' +
                ", youbian='" + youbian + '\'' +
                ", telephone='" + telephone + '\'' +
                ", phone='" + phone + '\'' +
                ", moren='" + moren + '\'' +
                ", userid='" + userid + '\'' +
                ", username='" + username + '\'' +
                '}';
    }
}

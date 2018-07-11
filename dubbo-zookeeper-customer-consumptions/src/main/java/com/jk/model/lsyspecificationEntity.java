package com.jk.model;

import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

public class lsyspecificationEntity implements Serializable{
    private static final long serialVersionUID = -6220175001793520992L;
    private String speciid;

    private String specname;

    private String specidesc;

    private Integer speciorder;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date specicreatedate;

    private Integer specitype;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date speciupdatedate;
    //业务字段
    private String specivlaues;

    public String getSpeciid() {
        return speciid;
    }

    public void setSpeciid(String speciid) {
        this.speciid = speciid == null ? null : speciid.trim();
    }

    public String getSpecname() {
        return specname;
    }

    public void setSpecname(String specname) {
        this.specname = specname == null ? null : specname.trim();
    }

    public String getSpecidesc() {
        return specidesc;
    }

    public void setSpecidesc(String specidesc) {
        this.specidesc = specidesc == null ? null : specidesc.trim();
    }

    public Integer getSpeciorder() {
        return speciorder;
    }

    public void setSpeciorder(Integer speciorder) {
        this.speciorder = speciorder;
    }

    public Date getSpecicreatedate() {
        return specicreatedate;
    }

    public void setSpecicreatedate(Date specicreatedate) {
        this.specicreatedate = specicreatedate;
    }

    public Date getSpeciupdatedate() {
        return speciupdatedate;
    }

    public void setSpeciupdatedate(Date speciupdatedate) {
        this.speciupdatedate = speciupdatedate;
    }

    public Integer getSpecitype() {
        return specitype;
    }

    public void setSpecitype(Integer specitype) {
        this.specitype = specitype;
    }

    public String getSpecivlaues() {
        return specivlaues;
    }

    public void setSpecivlaues(String specivlaues) {
        this.specivlaues = specivlaues;
    }

    @Override
    public String toString() {
        return "lsyspecificationEntity{" +
                "speciid='" + speciid + '\'' +
                ", specname='" + specname + '\'' +
                ", specidesc='" + specidesc + '\'' +
                ", speciorder=" + speciorder +
                ", specicreatedate=" + specicreatedate +
                ", specitype=" + specitype +
                ", speciupdatedate=" + speciupdatedate +
                ", specivlaues='" + specivlaues + '\'' +
                '}';
    }
}
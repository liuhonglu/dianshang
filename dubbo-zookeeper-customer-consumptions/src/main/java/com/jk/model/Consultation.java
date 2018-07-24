package com.jk.model;

import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

public class Consultation implements Serializable{

    private static final long serialVersionUID = 3431054781146581855L;

    private String id;//ID 主键
    private String content; //内容
    private Integer is_show; //是否显示
    private String ip; //IP地址
    private Integer member; //会员
    private String product; //商品
    private String forconsultation;//咨询
    private String replyconsultations; //回复
    private Integer ifreplyconsultations;//判断回复
    @DateTimeFormat(pattern = "yyyy-mm-dd")
    private Date creationtime;//创建时间
    //业务字段
    private String full_name;//(关联产品表)产品名称
    private String username;//(关联会员表)会员名称
    private String create_date;//创建时间
    private String name;//商品名称

    @Override
    public String toString() {
        return "Consultation{" +
                "id='" + id + '\'' +
                ", content='" + content + '\'' +
                ", is_show=" + is_show +
                ", ip='" + ip + '\'' +
                ", member=" + member +
                ", product='" + product + '\'' +
                ", forconsultation='" + forconsultation + '\'' +
                ", replyconsultations='" + replyconsultations + '\'' +
                ", ifreplyconsultations=" + ifreplyconsultations +
                ", creationtime=" + creationtime +
                ", full_name='" + full_name + '\'' +
                ", username='" + username + '\'' +
                ", create_date='" + create_date + '\'' +
                ", name='" + name + '\'' +
                '}';
    }

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Integer getIs_show() {
        return is_show;
    }

    public void setIs_show(Integer is_show) {
        this.is_show = is_show;
    }

    public String getIp() {
        return ip;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }

    public Integer getMember() {
        return member;
    }

    public void setMember(Integer member) {
        this.member = member;
    }

    public String getProduct() {
        return product;
    }

    public void setProduct(String product) {
        this.product = product;
    }

    public String getForconsultation() {
        return forconsultation;
    }

    public void setForconsultation(String forconsultation) {
        this.forconsultation = forconsultation;
    }

    public String getReplyconsultations() {
        return replyconsultations;
    }

    public void setReplyconsultations(String replyconsultations) {
        this.replyconsultations = replyconsultations;
    }

    public Integer getIfreplyconsultations() {
        return ifreplyconsultations;
    }

    public void setIfreplyconsultations(Integer ifreplyconsultations) {
        this.ifreplyconsultations = ifreplyconsultations;
    }

    public Date getCreationtime() {
        return creationtime;
    }

    public void setCreationtime(Date creationtime) {
        this.creationtime = creationtime;
    }

    public String getFull_name() {
        return full_name;
    }

    public void setFull_name(String full_name) {
        this.full_name = full_name;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getCreate_date() {
        return create_date;
    }

    public void setCreate_date(String create_date) {
        this.create_date = create_date;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}

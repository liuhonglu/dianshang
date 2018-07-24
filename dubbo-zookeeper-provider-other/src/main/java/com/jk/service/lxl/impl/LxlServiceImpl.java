package com.jk.service.lxl.impl;

import com.alibaba.fastjson.JSONObject;
import com.jk.mapper.lxl.LxlMapper;
import com.jk.model.Brand;
import com.jk.model.Consultation;
import com.jk.model.Coupon;
import com.jk.model.Promotion;
import com.jk.service.lxl.LxlService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.UUID;

@Service("LxlService")
public class LxlServiceImpl implements LxlService {

    @Resource
    private LxlMapper lxlmapper;

    public JSONObject queryBrand(int page, int rows) {
        //总条数
        long count = lxlmapper.queryCount();
//		起始位置 = （当前页-1）*每页条数
        int start = (page - 1) * rows;
//		结束位置 = 起始位置 + 每页条数
        //int end = start + rows;
        //查询规格集合
        List<Brand> userlist = lxlmapper.queryBrandPage(start,rows);
//		easyui 查询分页数据时 必须返回总条数（总条数必须叫total）  当前页展示数据（当前页展示数据必须叫 rows）
        JSONObject json = new JSONObject();
        json.put("total", count);
        json.put("rows", userlist);
        return json;
    }

    public void addBrand(Brand brand) {
        brand.setId(UUID.randomUUID().toString());
        lxlmapper.addBrand(brand);
    }

    public void delBrand(String id) {
        lxlmapper.delBrand(id);
    }

    public Brand queryBrandById(String id) {
        Brand brand =  lxlmapper.queryBrandById(id);
        return brand;
    }

    public void editBrand(Brand brand) {
        lxlmapper.editBrand(brand);
    }

    public JSONObject queryConsultation(int page, int rows,Consultation consultation) {
        //总条数
        long count = lxlmapper.queryConsultationCount(consultation);
//		起始位置 = （当前页-1）*每页条数
        int start = (page - 1) * rows;
//		结束位置 = 起始位置 + 每页条数
        //int end = start + rows;
        //查询规格集合
        List<Brand> userlist = lxlmapper.queryConsultation(start,rows,consultation);
//		easyui 查询分页数据时 必须返回总条数（总条数必须叫total）  当前页展示数据（当前页展示数据必须叫 rows）
        JSONObject json = new JSONObject();
        json.put("total", count);
        json.put("rows", userlist);
        return json;
    }

    public void delConsultation(String id) {
        lxlmapper.delConsultation(id);
    }

    public void addConsultation(Consultation consultation) {
        consultation.setId(UUID.randomUUID().toString());
        lxlmapper.addConsultation(consultation);
    }

    public Consultation queryByConsultationId(String id) {
        Consultation con = lxlmapper.queryByConsultationId(id);
        return con;
    }

    public void editConsultation(Consultation consultation) {
        lxlmapper.editConsultation(consultation);
    }

    public Consultation queryByIdConsultation(String id) {
        Consultation con = lxlmapper.queryByIdConsultation(id);
        return con;
    }

    public void editConsultation1(Consultation consultation) {
        if(consultation.getIs_show()==null){
            consultation.setIs_show(0);
        }
        lxlmapper.editConsultation1(consultation);
    }

    public void edit(String id,String replyconsultations) {
        lxlmapper.edit(id,replyconsultations);
    }

    public JSONObject queryPromotion(int page, int rows, Promotion pro) {
        //总条数
        long count = lxlmapper.queryPromotionCount(pro);
//		起始位置 = （当前页-1）*每页条数
        int start = (page - 1) * rows;
//		结束位置 = 起始位置 + 每页条数
        //int end = start + rows;
        //查询规格集合
        List<Brand> userlist = lxlmapper.queryPromotion(start,rows,pro);
//		easyui 查询分页数据时 必须返回总条数（总条数必须叫total）  当前页展示数据（当前页展示数据必须叫 rows）
        JSONObject json = new JSONObject();
        json.put("total", count);
        json.put("rows", userlist);
        return json;
    }

    public Promotion queryPromotionById(String id) {
        Promotion pro = lxlmapper.queryPromotionById(id);
        return pro;
    }

    public List<Consultation> queryBrands(String name) {
        List<Consultation>list = lxlmapper.queryBrands(name);
        return list;
    }

    public void updatePromotion(Promotion pro) {
        lxlmapper.updatePromotion(pro);
    }

    public JSONObject queryCoupon(int page, int rows, Coupon cou) {
        //总条数
        long count = lxlmapper.queryCouponCount(cou);
//		起始位置 = （当前页-1）*每页条数
        int start = (page - 1) * rows;
//		结束位置 = 起始位置 + 每页条数
        //int end = start + rows;
        //查询规格集合
        List<Coupon> userlist = lxlmapper.queryCoupon(start,rows,cou);
//		easyui 查询分页数据时 必须返回总条数（总条数必须叫total）  当前页展示数据（当前页展示数据必须叫 rows）
        JSONObject json = new JSONObject();
        json.put("total", count);
        json.put("rows", userlist);
        return json;
    }

    public void delCou(String id) {
        lxlmapper.delCou(id);
    }

    public Coupon queryCouById(String id) {
        Coupon cou = lxlmapper.queryCouById(id);
        return cou;
    }

    public void editCou(Coupon cou) {
        lxlmapper.editCou(cou);
    }

    public void addCou(Coupon cou) {
        cou.setId(UUID.randomUUID().toString());
        lxlmapper.addCou(cou);
    }


}

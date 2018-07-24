package com.jk.service.lxl;

import com.alibaba.fastjson.JSONObject;
import com.jk.model.Brand;
import com.jk.model.Consultation;
import com.jk.model.Coupon;
import com.jk.model.Promotion;

import java.util.List;

public interface LxlService {
    public JSONObject queryBrand(int page, int rows);
    public void addBrand(Brand brand);
    public void delBrand(String id);
    public Brand queryBrandById(String id);
    public void editBrand(Brand brand);
    public JSONObject queryConsultation(int page, int rows, Consultation consultation);
    public void delConsultation(String id);
    public void addConsultation(Consultation consultation);
    public Consultation queryByConsultationId(String id);
    public void editConsultation(Consultation consultation);
    public Consultation queryByIdConsultation(String id);
    public void editConsultation1(Consultation consultation);
    public void edit(String replyconsultations, String id);
    public JSONObject queryPromotion(int page, int rows, Promotion pro);
    public Promotion queryPromotionById(String id);
    public List<Consultation> queryBrands(String name);
    public void updatePromotion(Promotion pro);
    public JSONObject queryCoupon(int page, int rows, Coupon cou);
    public void delCou(String id);
    public Coupon queryCouById(String id);
    public void editCou(Coupon cou);
    public void addCou(Coupon cou);
}

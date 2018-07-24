package com.jk.mapper.lxl;

import com.jk.model.Brand;
import com.jk.model.Consultation;
import com.jk.model.Coupon;
import com.jk.model.Promotion;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface LxlMapper {

    void addBrand(Brand brand);

    void delBrand(@Param("id") String id);

    Brand queryBrandById(@Param("id") String id);

    void editBrand(Brand brand);

    long queryCount();

    List<Brand> queryBrandPage(@Param("start") int start, @Param("rows") int rows);

    long queryConsultationCount(Consultation consultation);

    List<Brand> queryConsultation(@Param("start") int start, @Param("rows") int rows, @Param("con") Consultation consultation);

    void delConsultation(@Param("id") String id);

    void addConsultation(Consultation consultation);

    Consultation queryByConsultationId(@Param("id") String id);

    void editConsultation(Consultation consultation);

    Consultation queryByIdConsultation(@Param("id") String id);

    void editConsultation1(Consultation consultation);

    void edit(@Param("replyconsultations") String replyconsultations, @Param("id") String id);

    long queryPromotionCount(Promotion pro);

    List<Brand> queryPromotion(@Param("start") int start, @Param("rows") int rows, @Param("pro") Promotion pro);

    Promotion queryPromotionById(@Param("id") String id);

    List<Consultation> queryBrands(@Param("name") String name);

    void editPromotion(Promotion pro);

    void updatePromotion(Promotion pro);

    List<Coupon> queryCoupon(@Param("start") int start, @Param("rows") int rows, @Param("cou") Coupon cou);

    long queryCouponCount(Coupon cou);

    void delCou(@Param("id") String id);

    Coupon queryCouById(@Param("id") String id);

    void editCou(Coupon cou);

    void addCou(Coupon cou);
}

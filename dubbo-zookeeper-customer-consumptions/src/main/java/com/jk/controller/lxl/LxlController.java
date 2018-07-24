package com.jk.controller.lxl;

import com.alibaba.fastjson.JSONObject;
import com.jk.model.Brand;
import com.jk.model.Consultation;
import com.jk.model.Coupon;
import com.jk.model.Promotion;
import com.jk.service.lxl.LxlService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.naming.directory.SearchResult;
import java.util.List;

@Controller
@RequestMapping("lxlcontroller")
public class LxlController {

    @Resource
    private LxlService lxlservice;

    //查询品牌
    @RequestMapping("/queryBrand")
    @ResponseBody
    public JSONObject queryBrand(int page, int rows) {
        JSONObject jsons = lxlservice.queryBrand(page, rows);
        return jsons;
    }

    //新增品牌
    @RequestMapping("/addBrand")
    @ResponseBody
    public String addBrand(Brand brand) {
        lxlservice.addBrand(brand);
        return "1";
    }

    //删除品牌
    @RequestMapping("/delBrand")
    @ResponseBody
    public String delBrand(String id) {
        lxlservice.delBrand(id);
        return "1";
    }

    //回填品牌
    @RequestMapping("/queryBrandById")
    public ModelAndView queryBrandById(String id) {
        ModelAndView vew = new ModelAndView();
        Brand brand = lxlservice.queryBrandById(id);
        vew.addObject("brand", brand);
        vew.setViewName("lxl/addBrand");
        return vew;
    }

    //修改品牌
    @RequestMapping("/editBrand")
    @ResponseBody
    public String editBrand(Brand brand) {
        lxlservice.editBrand(brand);
        return "1";
    }

    //查询咨询管理
    @RequestMapping("/queryConsultation")
    @ResponseBody
    public JSONObject queryConsultation(int page, int rows, Consultation consultation) {
        JSONObject jsons = lxlservice.queryConsultation(page, rows, consultation);
        return jsons;
    }

    //删除
    @RequestMapping("/delConsultation")
    @ResponseBody
    public String delConsultation(String id) {
        lxlservice.delConsultation(id);
        return "1";
    }


    //回复内容
    @RequestMapping("/editConsultation")
    @ResponseBody
    public String editConsultation(Consultation consultation) {
        lxlservice.editConsultation(consultation);
        return "1";
    }

    //回显咨询管理
    @RequestMapping("/queryByConsultationId")
    public ModelAndView queryByConsultationId(String id) {
        Consultation con = lxlservice.queryByConsultationId(id);
        ModelAndView vew = new ModelAndView();
        vew.addObject("con", con);
        vew.setViewName("lxl/addConsulation");
        return vew;
    }

    //修改资讯管理
    @RequestMapping("/editConsultation1")
    @ResponseBody
    public String editConsultation1(Consultation consultation) {
        lxlservice.editConsultation1(consultation);
        return "1";
    }

    //回显咨询管理
    @RequestMapping("/queryByIdConsultation")
    public ModelAndView queryByIdConsultation(String id) {
        Consultation con = lxlservice.queryByIdConsultation(id);
        ModelAndView vew = new ModelAndView();
        vew.addObject("con", con);
        vew.setViewName("lxl/addConsulation");
        return vew;
    }

    //编辑咨询管理
    @RequestMapping("/queryByIdConsultation1")
    public ModelAndView queryByIdConsultation1(String id) {
        Consultation con = lxlservice.queryByIdConsultation(id);
        ModelAndView vew = new ModelAndView();
        vew.addObject("con", con);
        vew.setViewName("lxl/bianjiConsulation");
        return vew;
    }

    // 回复删除功能
    @RequestMapping("/edit")
    @ResponseBody
    public String edit(String id,String replyconsultations){
        lxlservice.edit(id,replyconsultations);
        return "1";
    }

    //查询促销管理
    @RequestMapping("/queryPromotion")
    @ResponseBody
    public JSONObject queryPromotion(Promotion pro,int page,int rows) {
        JSONObject jsons = lxlservice.queryPromotion(page, rows, pro);
        return jsons;
    }

    //回填促销管理
    @RequestMapping("/queryPromotionById")
    public ModelAndView queryPromotionById(String id){
        Promotion pro = lxlservice.queryPromotionById(id);
        ModelAndView vew = new ModelAndView();
        vew.addObject("pro",pro);
        vew.setViewName("lxl/editPromotion");
        return vew;
    }

   /* //查询参与商品
    @RequestMapping("/")
    public ModelAndView queryBrands(String name){
       List<Promotion>list = lxlservice.queryBrands(name);
        ModelAndView vew = new ModelAndView();
        vew.addObject("list",list);
        vew.setViewName("lxl/editPromotion");
        return vew;
    }*/

    //查询参与商品
    @RequestMapping("/queryBrands")
    @ResponseBody
    public List<Consultation> queryBrands(String name){
        List<Consultation>list = lxlservice.queryBrands(name);
        /*ModelAndView vew = new ModelAndView();
        vew.addObject("list",list);
        vew.setViewName("lxl/editPromotion");*/
        return list;
    }

    //修改促销管理
    @RequestMapping("/updatePromotion")
    @ResponseBody
    public String updatePromotion(Promotion pro){
        lxlservice.updatePromotion(pro);
        return "1";
    }

    //查询优惠券管理e
    @RequestMapping("/queryCoupon")
    @ResponseBody
    public JSONObject queryCoupon(Coupon cou,int page,int rows){
        JSONObject jsons = lxlservice.queryCoupon(page, rows, cou);
        return jsons;
    }

    //删除优惠券管理
    @RequestMapping("/delCou")
    @ResponseBody
    public String delCou(String id){
        lxlservice.delCou(id);
        return "1";
    }

    //回填优惠券管理
    @RequestMapping("/queryCouById")
    public ModelAndView queryCouById(String id){
        Coupon cou = lxlservice.queryCouById(id);
        ModelAndView vew = new ModelAndView();
        vew.addObject("cou",cou);
        vew.setViewName("lxl/editCou");
        return vew;
    }

    //修改优惠券管理
    @RequestMapping("/editCou")
    @ResponseBody
    public String editCou(Coupon cou){
        lxlservice.editCou(cou);
        return "1";
    }

    //新增优惠券管理
    @RequestMapping("/addCou")
    @ResponseBody
    public String addCou(Coupon cou){
        lxlservice.addCou(cou);
        return "1";
    }

    //购物车点击购买判断是否登录
    @RequestMapping("/ifLogin")
    public String ifLogin(){

        return null;
    }
}

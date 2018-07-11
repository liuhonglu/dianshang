package com.jk.controller.hdd;

import com.alibaba.fastjson.support.config.FastJsonConfig;
import com.jk.model.ProductCategory;
import com.jk.service.hdd.HddService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * Created by Administrator on 2018/7/5 0005.
 */
@Controller
@RequestMapping("hddcontroller")
public class HddController {

    @Autowired
    private HddService HddService;

    //查询展示页面方法 hddcontroller/toproductcategory
     @RequestMapping("toproductcategory")
     public String toproductcategory(){
         return "hddview/productcategorylist";

     }

     //查询列表 hddcontroller/queryproductcategorylist
    @RequestMapping("queryproductcategorylist")
    @ResponseBody
    public List<ProductCategory> queryproductcategorylist(){

           List<ProductCategory> list=HddService.queryproductcategorylist();

         return list;
    }
  // /hddcontroller/addtopc  新增跳转页面
    @RequestMapping("addtopc")
    public String addtopc(){
        return "hddview/addpc";
    }


    //新增 hddcontroller/savepc.lhtml
    @RequestMapping("savepc")
    @ResponseBody
    public String savepc(ProductCategory pc){
        HddService.savepc(pc);
    return "1";
    }



    //删除  hddcontroller/delequeryproductcategory
    @ResponseBody
    @RequestMapping("deletepc")
    public Integer deletepc(String ids){
        System.out.println(ids);
        Integer i =HddService.deletepc(ids);
        return i ;
    }





    //修改前查询
    @RequestMapping("updateById")
    public String updateById(String id,Model md) {
        ProductCategory pc =HddService.updateById(id);
        System.out.println(pc);
        md.addAttribute("pc",pc);
        return "hddview/updatepc";
    }


    //修改
    @RequestMapping("updatePc")
    @ResponseBody
    public Integer updatePc(ProductCategory pc) {
        System.out.println(pc);
        Integer i = HddService.updatePc(pc);
        return i;
    }



}

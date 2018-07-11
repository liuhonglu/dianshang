package com.jk.controller.lxl;

import com.alibaba.fastjson.JSONObject;
import com.jk.model.Brand;
import com.jk.service.lxl.LxlService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("lxlcontroller")
public class LxlController {

    @Resource
    private LxlService lxlservice;

    @RequestMapping("/queryBrand")
    @ResponseBody
    public JSONObject queryBrand(int page , int rows){
        JSONObject jsons = lxlservice.queryBrand(page,rows);
        return jsons;
    }

    @RequestMapping("/addBrand")
    @ResponseBody
    public String addBrand(Brand brand){
        lxlservice.addBrand(brand);
        return "1";
    }

    @RequestMapping("/delBrand")
    @ResponseBody
    public String delBrand(String id){
        lxlservice.delBrand(id);
        return "1";
    }

    @RequestMapping("/queryBrandById")
    public ModelAndView queryBrandById(String id){
        ModelAndView vew = new ModelAndView();
        Brand brand = lxlservice.queryBrandById(id);
        vew.addObject("brand",brand);
        vew.setViewName("lxl/addBrand");
        return vew;
    }

    @RequestMapping("/editBrand")
    @ResponseBody
    public String editBrand(Brand brand){
        lxlservice.editBrand(brand);
        return "1";
    }
}

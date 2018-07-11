package com.jk.controller.lhl;

import com.alibaba.fastjson.JSONObject;
import com.jk.model.Product;
import com.jk.service.lhl.IProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Created by Administrator on 2018/7/6 0006.
 */
@Controller
@RequestMapping("productcontroller")
public class ProductController {

    @Autowired
    private IProductService productService;

    /**
     * 查询商品管理分页列表
     * @param page
     * @param rows
     * @param product
     * @return
     */
    @RequestMapping("queryproduct")
    @ResponseBody
    public JSONObject  quertproduct(Integer page, Integer rows, Product product){
        JSONObject  list = productService.queryproduct(page,rows,product);
        return list;
    }


    /**
     *  可批量删除商品管理数据
     */
    @RequestMapping("deleteproduct")
    @ResponseBody
    public String deleteproduct(String sn){
        productService.deleteproduct(sn);
        return "1";
    }

    /**
     * 新增商品管理数据
     */
    @RequestMapping("insertproduct")
    @ResponseBody
    public String insertproduct(Product product){
        productService.insertproduct(product);
        return "1";
    }

    /**
     * 查询回显商品管理单条数据
     * @param model
     * @param id
     * @return
     */
    @RequestMapping("queryproductbyid")
    public String queryproductbyid(Model model,String id){
        Product product = productService.queryproductbyid(id);
        model.addAttribute("product",product);
        return "";
    }

    /**
     * 修改商品管理
     * @param product
     * @return
     */
    @RequestMapping("updateproduct")
    @ResponseBody
    public String updateproduct(Product product){
        productService.updateproduct(product);
        return "1";
    }


}

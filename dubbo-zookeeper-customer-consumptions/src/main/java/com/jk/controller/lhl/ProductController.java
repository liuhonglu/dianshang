package com.jk.controller.lhl;

import com.alibaba.druid.util.StringUtils;
import com.alibaba.fastjson.JSONObject;
import com.jk.model.Product;
import com.jk.service.lhl.IProductService;
import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
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
        return "lhl/updateshangpinguanli";
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

    //图片上传
    @RequestMapping("upImg.do")
    @ResponseBody
    public String upImg(MultipartFile artImg, HttpServletRequest req) throws Exception{
        String fileName = artImg.getOriginalFilename();
        req.getSession().setAttribute("fileName", fileName);
        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
        String folderPath = req.getSession().getServletContext().getRealPath("/")+"/upload/";

        File file = new File(folderPath);
        if(!file.exists()){
            file.mkdir();
        }
        String onlyFileName = sdf.format(new Date())+fileName.substring(fileName.lastIndexOf('.'));
        FileOutputStream fos = new FileOutputStream(folderPath+onlyFileName);
        req.getSession().setAttribute("fos", folderPath);
        fos.write(artImg.getBytes());
        fos.flush();
        fos.close();
        return  "upload/"+onlyFileName;
    }

//已上架
    @RequestMapping("queryyishangjia")
    @ResponseBody
    public List<Product> queryyishangjia(){
        List<Product> list = productService.queryyishangjia();
        return list;
    }
//未上架
    @RequestMapping("queryweishengjia")
    @ResponseBody
    public List<Product> weishengjia(){
        List<Product> list = productService.weishengjia();
        return list;
    }
//连衣裙
    @RequestMapping("querylianyiqun")
    @ResponseBody
    public List<Product> lianyiqun(){
        List<Product> list = productService.lianyiqun();
        return list;
    }
//衬衣
    @RequestMapping("querychenyi")
    @ResponseBody
    public List<Product> chenyi(){
        List<Product> list = productService.chenyi();
        return list;
    }
//塑身衣
    @RequestMapping("querysushenyi")
    @ResponseBody
    public List<Product> sushenyi(){
        List<Product> list = productService.sushenyi();
        return list;
    }
//睡衣
    @RequestMapping("queryshuiyi")
    @ResponseBody
    public List<Product>  shuiyi(){
        List<Product> list = productService.shuiyi();
        return list;
    }
//裤子
    @RequestMapping("querykuzi")
    @ResponseBody
    public List<Product>  kuzi(){
        List<Product> list = productService.kuzi();
        return list;
    }
//小西装
    @RequestMapping("queryxiaoxizhuang")
    @ResponseBody
    public List<Product> xiaoxizhuang(){
        List<Product> list = productService.xiaoxizhuang();
        return list;
    }
//T恤
    @RequestMapping("querytixu")
    @ResponseBody
    public List<Product>  tixu(){
        List<Product> list = productService.tixu();
        return list;
    }



}

package com.jk.service.lhl;

import com.alibaba.fastjson.JSONObject;
import com.jk.model.Product;

import java.awt.image.BufferedImage;
import java.util.List;

/**
 * Created by Administrator on 2018/7/6 0006.
 */
public interface IProductService {

    JSONObject queryproduct(Integer page, Integer rows, Product product);

    void deleteproduct(String sn);

    void insertproduct(Product product);

    Product queryproductbyid(String id);

    void updateproduct(Product product);

    List<Product> queryyishangjia();

    List<Product> weishengjia();

    List<Product> lianyiqun();

    List<Product> chenyi();

    List<Product> sushenyi();

    List<Product> shuiyi();

    List<Product> kuzi();

    List<Product> xiaoxizhuang();

    List<Product> tixu();


}

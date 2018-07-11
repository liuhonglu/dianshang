package com.jk.service.lhl;

import com.alibaba.fastjson.JSONObject;
import com.jk.model.Product;

import java.util.List;

/**
 * Created by Administrator on 2018/7/6 0006.
 */
public interface IProductService {

    JSONObject queryproduct(Integer page, Integer rows, Product product);

    void deleteproduct(String id);

    void insertproduct(Product product);

    Product queryproductbyid(String id);

    void updateproduct(Product product);

}

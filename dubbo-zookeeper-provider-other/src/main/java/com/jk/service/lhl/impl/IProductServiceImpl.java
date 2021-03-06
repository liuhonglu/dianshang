package com.jk.service.lhl.impl;


import com.alibaba.fastjson.JSONObject;
import com.jk.mapper.lhl.IProductMapper;
import com.jk.model.Product;
import com.jk.service.lhl.IProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.awt.image.BufferedImage;
import java.util.List;
import java.util.UUID;

/**
 * Created by Administrator on 2018/7/6 0006.
 */
@Service("productService")
public class IProductServiceImpl implements IProductService{

    @Autowired
    private IProductMapper productMapper;

    //查询商品管理分页列表
    public JSONObject queryproduct(Integer page, Integer rows, Product product) {

        JSONObject json = new JSONObject();
        int start = (page - 1)*rows;

        long count = productMapper.count(product);
        List<Product> list = productMapper.queryproduct(start,rows);

        json.put("total",count);
        json.put("rows",list);
        return json;
    }

    //可批量删除商品管理数据
    @Override
    public void deleteproduct(String id) {
       productMapper.deleteproduct(id);
    }

    //新增商品管理数据
    @Override
    public void insertproduct(Product product) {
        String uuid = UUID.randomUUID().toString().replace("-","");
        product.setSn(uuid);
        productMapper.insertproduct(product);
    }

    //查询回显商品管理单条数据
    @Override
    public Product queryproductbyid(String id) {
        Product product = productMapper.queryproductbyid(id);
        return product;
    }

    //修改商品管理
    @Override
    public void updateproduct(Product product) {
        productMapper.updateproduct(product);
    }

    @Override
    public List<Product> queryyishangjia() {
        List<Product> list = productMapper.queryyishangjia();
        return list;
    }

    @Override
    public List<Product> weishengjia() {
        List<Product> list = productMapper.weishengjia();
        return list;
    }

    @Override
    public List<Product> lianyiqun() {
        List<Product> list = productMapper.lianyiqun();
        return list;
    }

    @Override
    public List<Product> chenyi() {
        List<Product> list = productMapper.chenyi();
        return list;
    }

    @Override
    public List<Product> sushenyi() {
        List<Product> list = productMapper.sushenyi();
        return list;
    }

    @Override
    public List<Product> shuiyi() {
        List<Product> list = productMapper.shuiyi();
        return list;
    }

    @Override
    public List<Product> kuzi() {
        List<Product> list = productMapper.kuzi();
        return list;
    }

    @Override
    public List<Product> xiaoxizhuang() {
        List<Product> list = productMapper.xiaoxizhuang();
        return list;
    }

    @Override
    public List<Product> tixu() {
        List<Product> list = productMapper.tixu();
        return list;
    }


}

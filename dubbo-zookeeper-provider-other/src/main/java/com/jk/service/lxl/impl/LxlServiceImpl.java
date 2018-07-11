package com.jk.service.lxl.impl;

import com.alibaba.fastjson.JSONObject;
import com.jk.mapper.lxl.LxlMapper;
import com.jk.model.Brand;
import com.jk.service.lxl.LxlService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.UUID;

@Service("LxlService")
public class LxlServiceImpl implements LxlService {

    @Resource
    private LxlMapper lxlmapper;

    public JSONObject queryBrand(int page, int rows) {
        //总条数
        long count = lxlmapper.queryCount();
//		起始位置 = （当前页-1）*每页条数
        int start = (page - 1) * rows;
//		结束位置 = 起始位置 + 每页条数
        //int end = start + rows;
        //查询规格集合
        List<Brand> userlist = lxlmapper.queryBrandPage(start,rows);
//		easyui 查询分页数据时 必须返回总条数（总条数必须叫total）  当前页展示数据（当前页展示数据必须叫 rows）
        JSONObject json = new JSONObject();
        json.put("total", count);
        json.put("rows", userlist);
        return json;
    }

    public void addBrand(Brand brand) {
        brand.setId(UUID.randomUUID().toString());
        lxlmapper.addBrand(brand);
    }

    public void delBrand(String id) {
        lxlmapper.delBrand(id);
    }

    public Brand queryBrandById(String id) {
        Brand brand =  lxlmapper.queryBrandById(id);
        return brand;
    }

    public void editBrand(Brand brand) {
        lxlmapper.editBrand(brand);
    }
}

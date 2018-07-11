package com.jk.service.lxl;

import com.alibaba.fastjson.JSONObject;
import com.jk.model.Brand;

import java.util.List;

public interface LxlService {
    public JSONObject queryBrand(int page, int rows);
    public void addBrand(Brand brand);
    public void delBrand(String id);
    public Brand queryBrandById(String id);
    public void editBrand(Brand brand);
}

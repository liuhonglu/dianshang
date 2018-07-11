package com.jk.service.hdd;

import com.jk.model.ProductCategory;

import java.util.List;

public interface HddService {


    List<ProductCategory> queryproductcategorylist();

    Integer deletepc(String ids);

    void savepc(ProductCategory pc);

    ProductCategory updateById(String id);

    Integer updatePc(ProductCategory pc);
}

package com.jk.service.hdd;

import com.jk.model.ProductCategory;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by Administrator on 2018/7/4 0004.
 */
public interface HddService {

    List<ProductCategory> queryproductcategorylist();

    Integer deletepc(String ids);


    void savepc(ProductCategory pc);

    ProductCategory updateById(String id);

    Integer updatePc(ProductCategory pc);
}

package com.jk.mapper.hdd;

import com.jk.model.ProductCategory;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface HddotherMapper {
    List<ProductCategory> queryproductcategorylist();

    Integer deletepc(@Param("ids") String ids);

    void savepc(ProductCategory pc);

    ProductCategory updateById(@Param("id") String id);

    Integer updatePc(ProductCategory pc);
}

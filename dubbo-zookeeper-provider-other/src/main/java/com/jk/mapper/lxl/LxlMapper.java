package com.jk.mapper.lxl;

import com.jk.model.Brand;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface LxlMapper {

    void addBrand(Brand brand);

    void delBrand(@Param("id") String id);

    Brand queryBrandById(@Param("id") String id);

    void editBrand(Brand brand);

    long queryCount();

    List<Brand> queryBrandPage(@Param("start") int start, @Param("rows") int rows);
}

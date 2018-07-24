package com.jk.mapper.lhl;

import com.jk.model.Product;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by Administrator on 2018/7/6 0006.
 */
public interface IProductMapper {

     long count(@Param("product") Product product);

     List<Product> queryproduct(@Param("start") Integer start, @Param("rows") Integer rows);

     void deleteproduct(@Param("id") String sn);

    void insertproduct(@Param("product") Product product);

    Product queryproductbyid(@Param("id") String id);

    void updateproduct(@Param("product") Product product);

    List<Product> queryyishangjia();

    List<Product> weishengjia();

    List<Product> lianyiqun();

    List<Product> chenyi();

    List<Product> sushenyi();

    List<Product> shuiyi();

    List<Product> kuzi();

    List<Product> xiaoxizhuang();

    List<Product>  tixu();

}

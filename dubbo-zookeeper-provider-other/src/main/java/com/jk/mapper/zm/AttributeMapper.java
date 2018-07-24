package com.jk.mapper.zm;

import com.jk.model.Attribute;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AttributeMapper {
    //数据总条数
    long count(@Param("name") String name);
    //查询列表
    List<Attribute> querylist(@Param("name") String name, @Param("s") Integer s, @Param("rows") Integer rows);

    List queryoption(@Param("id") Integer id);
}

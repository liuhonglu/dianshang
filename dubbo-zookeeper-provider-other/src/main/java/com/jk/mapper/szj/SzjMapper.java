package com.jk.mapper.szj;

import com.jk.model.ParameterGroup;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SzjMapper {

    List<ParameterGroup> getParameterGroup(@Param("begin") Integer begin, @Param("end") Integer end);

    //List<ParameterGroup> getParameterGroupAll();

    long queryCount();

    void del(@Param("ids") String ids);
}

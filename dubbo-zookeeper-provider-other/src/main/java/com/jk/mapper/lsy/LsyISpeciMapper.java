package com.jk.mapper.lsy;

import com.jk.model.lsyspecificationEntity;
import com.jk.model.lsyspecivalueEntity;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface LsyISpeciMapper {

    //总条数
    long queryCount(@Param("speci")lsyspecificationEntity spec);

    //查询规格集合
    List<lsyspecificationEntity> querySpeciPage(@Param("start") int start, @Param("rows")int rows, @Param("speci")lsyspecificationEntity spec);

    ////查询规格的规格值集合
    List<lsyspecivalueEntity> querySpeciVla(@Param("speciid")String speciid);

    //删除选中的规格
    void delSpeci(@Param("speciid")String speciid) throws Exception;

    //删除规格值
    void delValOfSpeci(@Param("speciid")String speciid) throws Exception;
}

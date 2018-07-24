package com.jk.mapper.lhl;

import com.jk.model.FaHuoDianGuanLi;
import com.jk.model.KuaiDiDanmoban;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by Administrator on 2018/7/20 0020.
 */
public interface ImerchandiseMapper {

    List<KuaiDiDanmoban> querykuaididanmobanquery();


    void editstatusyi(@Param("id") String id);

    void editstatuser(@Param("id") String id);

    List<FaHuoDianGuanLi> queryfahuodianguanlilist();

    FaHuoDianGuanLi toeditfahuodianguanli(@Param("id") String id) throws Exception;

    void editfahuodanguanli(FaHuoDianGuanLi fahuodianguanli);

    void addfahuodianguanli(@Param("fahuodianguanli") FaHuoDianGuanLi fahuodianguanli);

    void deletefahuodianguanli(@Param("ids") String ids);

    void insertkuaididanmoban(@Param("kuaididanmokuai") KuaiDiDanmoban kuaididanmokuai);

    void deletekuaididan(@Param("ids") String ids);
}

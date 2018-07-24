package com.jk.mapper.lhl;

import com.jk.model.KuaiDiDanmoban;
import com.jk.model.TuiHuiGuanLi;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by Administrator on 2018/7/21 0021.
 */
public interface ITuiHuiMapper {
    List<TuiHuiGuanLi> querytuihuoguanlilist();

    TuiHuiGuanLi toeditbianjituihuo(@Param("id") String id);

    List<KuaiDiDanmoban> querywuliugongsi(@Param("kuaididanid") String kuaididanid);

    void edittuihuoguanli(@Param("tuihuoguanli") TuiHuiGuanLi tuihuoguanli);

    void deletetuihuoguanli(@Param("id") String id);
}

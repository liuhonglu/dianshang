package com.jk.service.lhl;

import com.jk.model.KuaiDiDanmoban;
import com.jk.model.TuiHuiGuanLi;

import java.util.List;

/**
 * Created by Administrator on 2018/7/21 0021.
 */
public interface ITuiHuiService {

    List querytuihuoguanlilist();

    TuiHuiGuanLi toeditbianjituihuo(String id);

    List<KuaiDiDanmoban> querywuliugongsi(String kuaididanid);

    void edittuihuoguanli(TuiHuiGuanLi tuihuoguanli);

    void deletetuihuoguanli(String id);

}

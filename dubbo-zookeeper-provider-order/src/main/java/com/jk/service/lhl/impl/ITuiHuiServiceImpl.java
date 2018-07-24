package com.jk.service.lhl.impl;

import com.jk.mapper.lhl.ITuiHuiMapper;
import com.jk.model.KuaiDiDanmoban;
import com.jk.model.TuiHuiGuanLi;
import com.jk.service.lhl.ITuiHuiService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2018/7/21 0021.
 */
@Service("tuihuoService")
public class ITuiHuiServiceImpl implements ITuiHuiService{

    @Autowired
    private ITuiHuiMapper tuihuimapper;


    @Override
    public List<TuiHuiGuanLi> querytuihuoguanlilist() {
        List<TuiHuiGuanLi> list = tuihuimapper.querytuihuoguanlilist();
        return list;
    }

    @Override
    public TuiHuiGuanLi toeditbianjituihuo(String id) {
        TuiHuiGuanLi tuihuoguanli = tuihuimapper.toeditbianjituihuo(id);
        return tuihuoguanli;
    }

    @Override
    public List<KuaiDiDanmoban> querywuliugongsi(String kuaididanid) {
        List<KuaiDiDanmoban> list = tuihuimapper.querywuliugongsi(kuaididanid);
        return list;
    }

    @Override
    public void edittuihuoguanli(TuiHuiGuanLi tuihuoguanli) {
        tuihuimapper.edittuihuoguanli(tuihuoguanli);
    }

    @Override
    public void deletetuihuoguanli(String id) {
        tuihuimapper.deletetuihuoguanli(id);
    }
}

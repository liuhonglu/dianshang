package com.jk.service.lhl.impl;

import com.jk.mapper.lhl.ImerchandiseMapper;
import com.jk.model.FaHuoDianGuanLi;
import com.jk.model.KuaiDiDanmoban;
import com.jk.service.lhl.ImerchandiseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;

/**
 * Created by Administrator on 2018/7/20 0020.
 */
@Service("merchandiseService")
public class ImerchandiseServiceImpl implements ImerchandiseService{

    @Autowired
    private ImerchandiseMapper merchandiseMapper;

    @Override
    public List<KuaiDiDanmoban> querykuaididanmobanquery() {
        List<KuaiDiDanmoban> list = merchandiseMapper.querykuaididanmobanquery();
        return list;
    }

    @Override
    public void editstatus(String shifoumoren, String id) {
        if(shifoumoren.equals("1")){
            merchandiseMapper.editstatusyi(id);
        }
        if(shifoumoren.equals("2")){
            merchandiseMapper.editstatuser(id);
        }
    }

    @Override
    public List<FaHuoDianGuanLi> queryfahuodianguanlilist() {
        List<FaHuoDianGuanLi> list = merchandiseMapper.queryfahuodianguanlilist();
        return list;
    }

    @Override
    public FaHuoDianGuanLi toeditfahuodianguanli(String id) throws Exception {
        FaHuoDianGuanLi faHuoDianGuanLi = merchandiseMapper.toeditfahuodianguanli(id);
        return faHuoDianGuanLi;
    }

    @Override
    public void editfahuodanguanli(FaHuoDianGuanLi fahuodianguanli) {
        merchandiseMapper.editfahuodanguanli(fahuodianguanli);
    }

    @Override
    public void addfahuodianguanli(FaHuoDianGuanLi fahuodianguanli) {
        String uuid = UUID.randomUUID().toString().replace("-","");
        fahuodianguanli.setId(uuid);
        merchandiseMapper.addfahuodianguanli(fahuodianguanli);
    }

    @Override
    public void deletefahuodianguanli(String ids) {
        merchandiseMapper.deletefahuodianguanli(ids);
    }

    @Override
    public void insertkuaididanmoban(KuaiDiDanmoban kuaididanmokuai) {
        String uuid = UUID.randomUUID().toString().replace("-","");
        kuaididanmokuai.setId(uuid);
        merchandiseMapper.insertkuaididanmoban(kuaididanmokuai);
    }

    @Override
    public void deletekuaididan(String ids) {
        merchandiseMapper.deletekuaididan(ids);
    }
}

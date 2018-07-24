package com.jk.service.lhl;

import com.jk.model.FaHuoDianGuanLi;
import com.jk.model.KuaiDiDanmoban;

import java.util.List;

/**
 * Created by Administrator on 2018/7/20 0020.
 */
public interface ImerchandiseService {

    List<KuaiDiDanmoban> querykuaididanmobanquery();

    void editstatus(String shifoumoren, String id);

    List<FaHuoDianGuanLi> queryfahuodianguanlilist();

    FaHuoDianGuanLi toeditfahuodianguanli(String id) throws Exception;

    void editfahuodanguanli(FaHuoDianGuanLi fahuodianguanli);

    void addfahuodianguanli(FaHuoDianGuanLi fahuodianguanli);

    void deletefahuodianguanli(String ids);

    void insertkuaididanmoban(KuaiDiDanmoban kuaididanmokuai);

    void deletekuaididan(String ids);
}

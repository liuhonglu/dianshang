package com.jk.controller.lhl;

import com.jk.model.FaHuoDianGuanLi;
import com.jk.model.KuaiDiDanmoban;
import com.jk.service.lhl.ImerchandiseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Created by Administrator on 2018/7/20 0020.
 */
@Controller
@RequestMapping("merchandisecontroller")
public class MmerchandiseController {

    @Autowired
    private ImerchandiseService merchandiseService;
    /**
     * 跳订单管理页面
     */
    @RequestMapping("todingdanguanli")
    public String todingdanguanli(){
        return "";
    }

    /**
     * 跳快递单模板列表
     */
    @RequestMapping("tokuaididanmoban")
    public String tokuaididanmoban(){
        return "lhl/merchandise/tokuaididanmoban";
    }


    /**
     * 查询快递单模块
     * @return
     */
    @RequestMapping("querykuaididanmobanquery")
    @ResponseBody
    public List<KuaiDiDanmoban> querykuaididanmobanquery(){
        List<KuaiDiDanmoban> list = merchandiseService.querykuaididanmobanquery();
        return list;
    }

    /**
     * 修改快递是否默认状态
     */
    @RequestMapping("editstatus")
    @ResponseBody
    public String editstatus(String shifoumoren,String id){
        merchandiseService.editstatus(shifoumoren,id);
        return "1";
    }

    /**
     * 跳发货点管理
     * @return
     */
    @RequestMapping("tofahuodianguanli")
    public String tofahuodianguanli(){
        return "lhl/merchandise/tofahuodianguanli";
    }

    /**
     * 查询发货点管理列表
     */
    @RequestMapping("queryfahuodianguanlilist")
    @ResponseBody
    public List<FaHuoDianGuanLi> queryfahuodianguanlilist(){
        List<FaHuoDianGuanLi> list = merchandiseService.queryfahuodianguanlilist();
        return list;
    }

    /**
     * 回显发货点管理
     */
    @RequestMapping("toeditfahuodianguanli")
    public String toeditfahuodianguanli(Model model, String id) throws Exception{
        FaHuoDianGuanLi faHuoDianGuanLi = merchandiseService.toeditfahuodianguanli(id);
        model.addAttribute("faHuoDianGuanLi",faHuoDianGuanLi);
        return "lhl/merchandise/editfahuodanguanli";
    }

    /**
     * 修改发货点管理
     */
    @RequestMapping("editfahuodanguanli")
    public String editfahuodanguanli(FaHuoDianGuanLi fahuodianguanli){
        merchandiseService.editfahuodanguanli(fahuodianguanli);
        return "lhl/merchandise/tofahuodianguanli";
    }

    /**
     * 跳新增发货点管理页面
     */
    @RequestMapping("toaddfahuodianguanli")
    public String toaddfahuodianguanli(){
        return "lhl/merchandise/addfahuodianguanli";
    }

    /**
     * 新增发货点管理
     */
    @RequestMapping("addfahuodianguanli")
    public String addfahuodianguanli(FaHuoDianGuanLi fahuodianguanli){
        merchandiseService.addfahuodianguanli(fahuodianguanli);
        return "lhl/merchandise/tofahuodianguanli";
    }

    /**
     * 删除发货点管理
     */
    @RequestMapping("deletefahuodianguanli")
    @ResponseBody
    public String deletefahuodianguanli(String ids){
        merchandiseService.deletefahuodianguanli(ids);
        return "1";
    }

    /**
     * 跳添加快递单模块页面
     */
    @RequestMapping("toinsertkuaididanmoban")
    public String toinsertkuaididanmoban(){
        return "lhl/merchandise/insertkuaididanmoban";
    }

    /**
    *添加快递单模块
    */
    @RequestMapping("insertkuaididanmoban")
    public String insertkuaididanmoban(KuaiDiDanmoban kuaididanmokuai){
        merchandiseService.insertkuaididanmoban(kuaididanmokuai);
        return "lhl/merchandise/insertkuaididanmoban";
    }

    /**
     * 删除快递单模块
     */
    @RequestMapping("deletekuaididan")
    @ResponseBody
    public String deletekuaididan(String ids){
        merchandiseService.deletekuaididan(ids);
        return "1";
    }



}

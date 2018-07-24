package com.jk.controller.lhl;

import com.jk.model.KuaiDiDanmoban;
import com.jk.model.TuiHuiGuanLi;
import com.jk.service.lhl.ITuiHuiService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Created by Administrator on 2018/7/21 0021.
 */
@Controller
@RequestMapping("tuihuocontroller")
public class TuiHuoController {

    @Autowired
    private ITuiHuiService tuihuiService;

    /**
     * 跳退货管理页面
     */
    @RequestMapping("totuihuoguanli")
    public String totuihuoguanli(){
        return "lhl/tuihuo/totuihuoguanli";
    }

    /**
     * 查询退货管理
     */
    @RequestMapping("querytuihuiguanlilist")
    @ResponseBody
    public List<TuiHuiGuanLi> querytuihuoguanlilist(){
        List<TuiHuiGuanLi> list = tuihuiService.querytuihuoguanlilist();
        System.out.println(list);
        return list;
    }

    /**
     * 回显退货管理
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("toeditbianjituihuo")
    public String toeditbianjituihuo(String id,Model model){
        TuiHuiGuanLi tuihuoguanli = tuihuiService.toeditbianjituihuo(id);

        List<KuaiDiDanmoban> list = tuihuiService.querywuliugongsi(tuihuoguanli.getKuaididanid());

        model.addAttribute("list",list);
        model.addAttribute("tuihuoguanli",tuihuoguanli);
        return "lhl/tuihuo/edittuihuoguanli";
    }

    /**
     * 修改退货管理
     */
    @RequestMapping("edittuihuoguanli")
    @ResponseBody
    public String edittuihuoguanli(TuiHuiGuanLi tuihuoguanli){
        tuihuiService.edittuihuoguanli(tuihuoguanli);
        return "1";
    }

    /**
     * 删除退货管理
     */
    @RequestMapping("deletetuihuoguanli")
    @ResponseBody
    public String deletetuihuoguanli(String id){
        tuihuiService.deletetuihuoguanli(id);
        return "1";
    }

}

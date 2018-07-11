package com.jk.controller.lsy;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by Administrator on 2018/7/5 0005.
 */
@Controller
@RequestMapping("LsyIndexChange")
public class LsyIndexChange {

    //主页面点击商品创建商品管理列表
    @RequestMapping("toProductsListManageJsp")
    public String toProductsListManageJsp(){
        return "Admin/Lsy/ProListManage";
    }
    //主页面点击商品创建商品管理列表
    @RequestMapping("toDingDanListManageJsp")
    public String toDingDanListManageJsp(){
        return "Admin/Lsy/DingDanManage";
    }//点击会员进入会员管理
    @RequestMapping("toHuiYuanListManageJsp")
    public String toHuiYuanListManageJsp(){
        return "Admin/Lsy/HuiYuanManage";
    }
    //点击内容进入内容管理
    @RequestMapping("toneirongListManageJsp")
    public String toneirongListManageJsp(){
        return "Admin/Lsy/NeiRongManage";
    }
    //点击营销进入营销管理
    @RequestMapping("toyingxiaoListManageJsp")
    public String toyingxiaoListManageJsp(){
        return "Admin/Lsy/YingXiaoManage";
    }
    //点击统计进入统计管理
    @RequestMapping("totongjiListManageJsp")
    public String totongjiListManageJsp(){
        return "Admin/Lsy/TTONGJiNanage";
    }
    //点击系统进入系统管理
    @RequestMapping("toxitongListManageJsp")
    public String toxitongListManageJsp(){
        return "Admin/Lsy/XiTongManage";
    }
}

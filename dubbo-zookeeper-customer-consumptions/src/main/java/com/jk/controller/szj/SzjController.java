package com.jk.controller.szj;

import com.alibaba.fastjson.JSONObject;
import com.jk.model.ParameterGroup;
import com.jk.service.szj.SzjService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("szjController")
public class SzjController {
    @Autowired
    private SzjService szjService;

    @RequestMapping("aa")
    public String jumpMoKuai() {
        return "/szj/canshu";
    } @RequestMapping("add")
    public String add() {
        return "/szj/addcanshu";
    }

    /*@RequestMapping("/parameterGroup")
    @ResponseBody
    public  Map<String,Object> getParameterGroup(Integer page,Integer rows) throws Exception {
        Map<String,Object> map = new HashMap<String, Object>();
//        List<ParameterGroup> parameterGroup = szjService.getParameterGroup(page, rows);
        //总数据条数
        map.put("total", szjService.getParameterGroupAll().size());
        //每页的数据
        map.put("rows", szjService.getParameterGroup(page,rows));
        return map;
    }*/
    @RequestMapping("/parameterGroup")
    @ResponseBody
    public JSONObject getParameterGroup(Integer page, Integer rows) throws Exception {

//        List<ParameterGroup> parameterGroup = szjService.getParameterGroup(page, rows);
        JSONObject json = szjService.getuser(page,rows);
        return json;
    }
    //删除
    @RequestMapping("/del")
    @ResponseBody
    public int del(String ids)  {

//        List<ParameterGroup> parameterGroup = szjService.getParameterGroup(page, rows);

        try {
            szjService.del(ids);
            return 1;
        } catch (Exception e) {
            e.printStackTrace();
            return 2;
        }

    }
}

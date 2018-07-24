package com.jk.controller.lsy;

import com.alibaba.fastjson.JSONObject;
import com.jk.model.lsyspecificationEntity;
import com.jk.service.lsy.LsyISpeciService;
import com.jk.service.lsy.LsyISpeciService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.HashMap;

@Controller
@RequestMapping("LsySpeci")
public class LsySpeciController {
    @Autowired
    private LsyISpeciService lsyISpeciService;
    //查询规格并分页
    @RequestMapping("querySpeciPage")
    @ResponseBody
    public JSONObject querySpeciPage(int page , int rows ,lsyspecificationEntity spec){

        JSONObject jsons = lsyISpeciService.querySpeciPage(page,rows,spec);

        return jsons;
    }
    //删除选中的规格
    @RequestMapping("delSpeci")
    @ResponseBody
    public Integer delSpeci(lsyspecificationEntity spec){

        Integer jsons = lsyISpeciService.delSpeci(spec);

        return jsons;
    }
}

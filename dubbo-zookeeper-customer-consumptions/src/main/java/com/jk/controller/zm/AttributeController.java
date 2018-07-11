/**
 * Copyright (C), 2015-2018, XXX有限公司
 * FileName: AttributeController
 * Author: 张
 * Date: 2018/7/11 16:16
 * Description: 控制层
 * History:
 * <p>
 * 作者姓名 修改时间 版本号 描述
 */
package com.jk.controller.zm;

import com.alibaba.fastjson.JSONObject;
import com.jk.model.Attribute;
import com.jk.service.zm.AttributeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

/**
 * 〈一句话功能简述〉

 * 〈控制层〉
 *
 *@author 张
 *@create 2018/7/11
 *@since 1.0.0
 */
@Controller
@RequestMapping("attribute")
public class AttributeController {
    @Autowired
    private AttributeService service;
    @RequestMapping("querylist")
    @ResponseBody
    public JSONObject querylist(Integer page, Integer rows, String name){
        JSONObject json = service.queryList(name,page,rows);
        return json;
    }

}

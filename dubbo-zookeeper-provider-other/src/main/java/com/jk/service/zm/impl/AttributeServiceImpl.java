/**
 * Copyright (C), 2015-2018, XXX有限公司
 * FileName: AttributeServiceImpl
 * Author: 张
 * Date: 2018/7/9 16:35
 * Description:
 * History:
 * <p>
 * 作者姓名 修改时间 版本号 描述
 */
package com.jk.service.zm.impl;

import com.alibaba.fastjson.JSONObject;
import com.jk.mapper.zm.AttributeMapper;
import com.jk.model.Attribute;
import com.jk.service.zm.AttributeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 〈一句话功能简述〉

 * 〈AttributeService实现类〉
 *
 *@author 张
 *@create 2018/7/9
 *@since 1.0.0
 */
@Service(value = "attributeService")
public class AttributeServiceImpl implements AttributeService{
    @Autowired
    private AttributeMapper mapper;
    public JSONObject queryList(String name,Integer page, Integer rows){
        JSONObject json = new JSONObject();
        Long count = mapper.count(name);
        Integer s = (page-1) * rows;
        List<Attribute> list = mapper.querylist(name,s,rows);
        for (int i = 0; i < list.size(); i++) {
            //查询规格的规格值集合
            List<String> ll = mapper.queryoption(list.get(i).getId());
            list.get(i).setOptions(ll);
        }
        json.put("rows",list);
        json.put("total",count);
        return json;
    }
}

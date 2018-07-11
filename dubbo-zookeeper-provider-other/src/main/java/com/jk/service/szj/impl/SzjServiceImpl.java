package com.jk.service.szj.impl;

import com.alibaba.fastjson.JSONObject;
import com.jk.mapper.szj.SzjMapper;
import com.jk.model.ParameterGroup;
import com.jk.service.szj.SzjService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("szjService")
public class SzjServiceImpl implements SzjService {

    @Autowired
    private SzjMapper szjMapper;

    /*JSONObject方式分页查询*/
    @Override
    public JSONObject getuser(Integer page, Integer rows) {

        long count = szjMapper.queryCount();//总条数

        int begin = (page - 1) * rows;//起始位置 = （当前页-1）*每页条数

        int end = begin + rows;//结束位置 = 起始位置 + 每页条数

        List<ParameterGroup> userlist = szjMapper.getParameterGroup(begin,end);
        //easyui 查询分页数据时 必须返回总条数（总条数必须叫total）  当前页展示数据（当前页展示数据必须叫 rows）
        JSONObject json = new JSONObject();
        json.put("total", count);
        json.put("rows", userlist);
        return json;
    }

    @Override
    public void del(String ids) throws Exception {
        szjMapper.del(ids);
    }


   /* //每页数据
    @Override
    public List<ParameterGroup> getParameterGroup(Integer page, Integer rows) throws Exception {
        Integer begin = (page-1)*rows;
        Integer end = page*rows;
        return szjMapper.getParameterGroup(begin,end);
    }

    //总条数
    @Override
    public List<ParameterGroup> getParameterGroupAll() throws Exception {
        return szjMapper.getParameterGroupAll();
    }*/
}

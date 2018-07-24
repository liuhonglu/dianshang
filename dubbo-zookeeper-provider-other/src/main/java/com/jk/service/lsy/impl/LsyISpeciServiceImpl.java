package com.jk.service.lsy.impl;

import com.alibaba.fastjson.JSONObject;
import com.jk.mapper.lsy.LsyISpeciMapper;
import com.jk.model.lsyspecificationEntity;
import com.jk.model.lsyspecivalueEntity;
import com.jk.service.lsy.LsyISpeciService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("lsySpeci")
public class LsyISpeciServiceImpl implements LsyISpeciService{
    @Autowired
    private LsyISpeciMapper lsyISpeciMapper;

    //查询规格并分页
    public JSONObject querySpeciPage(int page, int rows, lsyspecificationEntity spec) {
        //总条数
        long count = lsyISpeciMapper.queryCount(spec);
//		起始位置 = （当前页-1）*每页条数
        int start = (page - 1) * rows;
//		结束位置 = 起始位置 + 每页条数
        //int end = start + rows;
        //查询规格集合
        List<lsyspecificationEntity> userlist = lsyISpeciMapper.querySpeciPage(start,rows,spec);
        for (int i = 0; i < userlist.size(); i++) {
            //查询规格的规格值集合
            List<lsyspecivalueEntity> ll = lsyISpeciMapper.querySpeciVla(userlist.get(i).getSpeciid());
            String val = "";
            for (int j = 0; j < ll.size(); j++) {
                val = val + ll.get(j).getName()+",";
            }
            userlist.get(i).setSpecivlaues(val);
        }
//		easyui 查询分页数据时 必须返回总条数（总条数必须叫total）  当前页展示数据（当前页展示数据必须叫 rows）
        JSONObject json = new JSONObject();
        json.put("total", count);
        json.put("rows", userlist);
        return json;
    }

    //删除选中的规格
    public Integer delSpeci(lsyspecificationEntity spec) {
        Integer f = 0;
        try {
            lsyISpeciMapper.delSpeci(spec.getSpeciid());
            //删除规格值
            lsyISpeciMapper.delValOfSpeci(spec.getSpeciid());
        } catch (Exception e) {
            e.printStackTrace();
            f = 1;
        }
        return f;
    }
}

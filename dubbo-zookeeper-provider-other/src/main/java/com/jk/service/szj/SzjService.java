package com.jk.service.szj;

import com.alibaba.fastjson.JSONObject;

/**
 * Created by Administrator on 2018/7/4 0004.
 */
public interface SzjService {
    /**
     * 查询每页数据
     * @param page
     * @param rows
     * @return
     * @throws Exception
     */
    //List<ParameterGroup> getParameterGroup(Integer page, Integer rows) throws  Exception;

    /**
     * 总条数
     * @return
     * @throws Exception
     */
    //List<ParameterGroup> getParameterGroupAll() throws Exception;

    /*分页查询另一种方法*/
    JSONObject getuser(Integer page, Integer rows);



    //删除
    void del(String ids)throws Exception;
}

package com.jk.service.zm;

import com.alibaba.fastjson.JSONObject;

public interface AttributeService {
    JSONObject queryList(String name, Integer page, Integer rows);

}

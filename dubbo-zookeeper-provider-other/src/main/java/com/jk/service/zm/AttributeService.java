package com.jk.service.zm;

import com.alibaba.fastjson.JSONObject;
import com.jk.model.Attribute;

public interface AttributeService {
    JSONObject queryList(String name, Integer page, Integer rows);

}

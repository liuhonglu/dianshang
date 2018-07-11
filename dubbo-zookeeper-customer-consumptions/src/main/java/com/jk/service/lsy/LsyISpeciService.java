package com.jk.service.lsy;

import com.alibaba.fastjson.JSONObject;
import com.jk.model.lsyspecificationEntity;

public interface LsyISpeciService {

    //查询规格并分页
    public JSONObject querySpeciPage(int page, int rows, lsyspecificationEntity spec);

    //删除选中的规格
    public Integer delSpeci(lsyspecificationEntity spec);
}

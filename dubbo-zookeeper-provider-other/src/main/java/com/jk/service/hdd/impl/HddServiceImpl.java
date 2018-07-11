package com.jk.service.hdd.impl;

import com.jk.mapper.hdd.HddotherMapper;
import com.jk.model.ProductCategory;
import com.jk.service.hdd.HddService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

@Service("HddService")
public class HddServiceImpl implements HddService {

     @Autowired
    private HddotherMapper mapper;

    public List<ProductCategory> queryproductcategorylist() {

        return mapper.queryproductcategorylist();
    }

    @Override
    public Integer deletepc(String ids) {

        return  mapper.deletepc(ids);
    }

    @Override
    public void savepc(ProductCategory pc) {

        /*SimpleDateFormat sim = new SimpleDateFormat("yyyy-MM-dd");*/
        String uuid = UUID.randomUUID().toString().replace("-","");
       /* Date date = new Date();*/
        pc.setId(uuid);
        /*pc.setCreatedate(sim.format(date));*/


        mapper.savepc(pc);
    }

    @Override
    public ProductCategory updateById(String id) {
        return mapper.updateById(id);
    }

    @Override
    public Integer updatePc(ProductCategory pc) {
        SimpleDateFormat sim = new SimpleDateFormat("yyyy-MM-dd");
        Date date = new Date();
        pc.setModifydate(sim.format(date).toString());

        return mapper.updatePc(pc);
    }


}

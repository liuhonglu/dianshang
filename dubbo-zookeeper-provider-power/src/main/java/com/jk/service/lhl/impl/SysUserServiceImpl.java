package com.jk.service.lhl.impl;

import com.jk.mapper.lhl.SysUserMapper;
import com.jk.model.SysPermission;
import com.jk.model.SysUser;
import com.jk.service.lhl.ISysUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by yangzhichao on 2018-07-09.
 */
@Service("sysUserService")
public class SysUserServiceImpl implements ISysUserService {

    @Autowired
    private SysUserMapper sysUserMapper;

    public SysUser login(SysUser sysUser) throws Exception {
        SysUser login = sysUserMapper.login(sysUser);
        return login;
    }

    public List<SysPermission> findMenuListByUserId(String id) throws Exception {
        return sysUserMapper.findMenuListByUserId(id);
    }

    public List<SysPermission> findPermissionListByUserId(String id) throws Exception {
        return sysUserMapper.findPermissionListByUserId(id);
    }
}

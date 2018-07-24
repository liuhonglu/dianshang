package com.jk.mapper.lhl;

import com.jk.model.SysPermission;
import com.jk.model.SysUser;

import java.util.List;

public interface SysUserMapper {
    int deleteByPrimaryKey(String id);

    int insert(SysUser record);

    int insertSelective(SysUser record);

    SysUser selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(SysUser record);

    int updateByPrimaryKey(SysUser record);

    /**
     * 用户登录
     * @param sysUser
     * @return
     * @throws Exception
     */
    public SysUser login(SysUser sysUser) throws Exception;

    /**
     * 通过用户id获得菜单列表信息
     * @param id
     * @return
     * @throws Exception
     */
    public List<SysPermission> findMenuListByUserId(String id) throws Exception;

    /**
     * 通过用户id获得权限集合信息
     * @param id
     * @return
     * @throws Exception
     */
    public List<SysPermission> findPermissionListByUserId(String id) throws Exception;
}
package com.jk.shiro;

import com.jk.model.ActiveUser;
import com.jk.model.SysPermission;
import com.jk.model.SysUser;
import com.jk.service.lhl.ISysUserService;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by yangzhichao on 2018-07-09.
 */
public class CustomRealm extends AuthorizingRealm {
    @Override
    public void setName(String name) {
        super.setName("customRealm");
    }

    private ISysUserService sysUserService;

    public ISysUserService getSysUserService() {
        return sysUserService;
    }

    public void setSysUserService(ISysUserService sysUserService) {
        this.sysUserService = sysUserService;
    }

    /**
     * authenticationToken
     * 认证
     * @param
     * @return
     * @throws AuthenticationException
     */
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
        String userCode = (String) token.getPrincipal();
        //通过userCode去数据库中查询相关信息
        SysUser sysUser = new SysUser();
        sysUser.setUsercode(userCode);
        ActiveUser activeUser = new ActiveUser();
        SysUser login = null;
        try {
            login = sysUserService.login(sysUser);

            if (login == null) {
                return null;
            }
            activeUser.setUserid(login.getId());
            activeUser.setUsercode(login.getUsercode());
            activeUser.setUsername(login.getUsername());
            //通过用户id获得菜单列表信息
            List<SysPermission> menuList = sysUserService.findMenuListByUserId(login.getId());
            activeUser.setMenus(menuList);
        } catch (Exception e) {
            e.printStackTrace();
        }
        //创建认证器
        SimpleAuthenticationInfo simpleAuthenticationInfo = new SimpleAuthenticationInfo(activeUser, login.getPassword(), ByteSource.Util.bytes(login.getSalt()), this.getName());
        return simpleAuthenticationInfo;
    }

    /**
     * 授权
     * @param principalCollection
     * @return
     */
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        ActiveUser activeUser = (ActiveUser) principalCollection.getPrimaryPrincipal();
        List<String> plist = new ArrayList<String>();
        //通过用户id获得权限集合信息
        try {
            List<SysPermission> permissionList = sysUserService.findPermissionListByUserId(activeUser.getUserid());
            for(SysPermission sysPermission : permissionList) {
                plist.add(sysPermission.getPercode());
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        SimpleAuthorizationInfo simpleAuthorizationInfo = new SimpleAuthorizationInfo();
        simpleAuthorizationInfo.addStringPermissions(plist);
        return simpleAuthorizationInfo;
    }


}

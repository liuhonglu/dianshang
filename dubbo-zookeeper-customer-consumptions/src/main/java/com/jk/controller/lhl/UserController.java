package com.jk.controller.lhl;

import com.jk.exception.CustomException;
import com.jk.model.ActiveUser;
import com.jk.model.User;
import org.apache.log4j.Logger;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * Created by yangzhichao on 2018-07-02.
 */
@Controller
@RequestMapping("/userController")
public class UserController  extends com.jk.controller.lhl.BaseController {
    //日志记录
    private static final Logger logger = Logger.getLogger(UserController.class);



//    @RequestMapping("/userList")
//    public void userList(User user, HttpServletResponse response) throws Exception {
//        List<User> userList = userService.userList(user);
//        super.writeJson(userList, response);
//    }

    @RequestMapping("/login")
    public String login(HttpServletRequest request) throws Exception{
        //如果登陆失败从request中获取认证异常信息，shiroLoginFailure就是shiro异常类的全限定名
        String exceptionClassName = (String) request.getAttribute("shiroLoginFailure");
        //根据shiro返回的异常类路径判断，抛出指定异常信息
        if(exceptionClassName!=null){
            if (UnknownAccountException.class.getName().equals(exceptionClassName)) {
                //最终会抛给异常处理器
                throw new CustomException("账号不存在");
            } else if (IncorrectCredentialsException.class.getName().equals(
                    exceptionClassName)) {
                throw new CustomException("用户名/密码错误");
            } else if("randomCodeError".equals(exceptionClassName)){
                throw new CustomException("验证码错误 ");
            }else {
                throw new Exception();//最终在异常处理器生成未知错误
            }
        }
        //此方法不处理登陆成功（认证成功），shiro认证成功会自动跳转到上一个请求路径
        //登陆失败还到login页面
        return "jsp/login";
    }

    //系统首页
    @RequestMapping("/first")
    public String first(Model model)throws Exception{

        //从shiro的session中取activeUser
        Subject subject = SecurityUtils.getSubject();
        //取身份信息
        ActiveUser activeUser = (ActiveUser) subject.getPrincipal();
        //通过model传到页面
        model.addAttribute("activeUser", activeUser);
        return "Admin/index";
    }

}

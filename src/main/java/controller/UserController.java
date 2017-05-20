package controller;

import model.UserEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import service.UserService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by Administrator on 2017/5/20 0020.
 */
@Controller
@RequestMapping(value = "/user")
public class UserController {
    @Autowired
    UserService userService;
    //登录控制
    @RequestMapping(value = "/dologin",method = RequestMethod.POST)
    public String login(HttpServletRequest request, HttpServletResponse response)
    {
        UserEntity userEntity = userService.login(request.getParameter("username"),
                request.getParameter("password"));
        System.out.println(userEntity.getuName());
        return "admin/users";
    }
}

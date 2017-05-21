package controller;

import model.UserEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import repository.CustomerRepository;
import service.UserService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by Administrator on 2017/5/20 0020.
 */
@Controller
@SessionAttributes("user")
@RequestMapping(value = "/user")
public class UserController {
    @Autowired
    UserService userService;
    @Autowired
    CustomerRepository customerRepository;
    //登录控制
    @RequestMapping(value = "/dologin",method = RequestMethod.POST)
    public String login(HttpServletRequest request, HttpServletResponse response, ModelMap modelMap)
    {
        UserEntity userEntity = userService.login(request.getParameter("username"),
                request.getParameter("password"));
        System.out.println(request.getParameter("username")+request.getParameter("password"));
        if(userEntity==null)
            return "user/LoginFailed";
        modelMap.addAttribute("user",userEntity);
        return "redirect:/carshop";
    }
    //返回用户注册界面
    @RequestMapping(value = "/register",method = RequestMethod.GET)
    public String register(UserEntity userEntity){
        return "carshop/reg";
    }

    //验证注册
    @RequestMapping(value = "/doRegister",method = RequestMethod.POST)
    public String doRegister(String username,String password1,ModelMap modelMap){
        if(userService.register(new UserEntity(password1,username)))
            return "redirect:/carshop";
        modelMap.addAttribute("user",new UserEntity(password1,username));
        //保存到customer表
        return "user/RegisterFailed";
    }
}

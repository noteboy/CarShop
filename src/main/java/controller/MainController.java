package controller;

/**
 * Created by liuxiaolong on 2017/5/17.
 */


import model.UserEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import repository.CustomerRepository;
import repository.UserRepository;

import java.util.List;

/**
 * Created by dzkan on 2016/3/8.
 */
@Controller
public class MainController {


    @Autowired
    UserRepository userRepository;
    CustomerRepository customerRepository;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index(ModelMap modelMap) {
        List<UserEntity> userList = userRepository.findAll();
        modelMap.addAttribute("userList", userList);
        return "index";
    }

    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String index2(ModelMap modelMap) {
        List<UserEntity> userList = userRepository.findAll();
        modelMap.addAttribute("userList", userList);
        return "index";
    }

    @RequestMapping(value = "/admin/users", method = RequestMethod.GET)
    public String getUsers(ModelMap modelMap) {
        // 查询user表中所有记录
        List<UserEntity> userList = userRepository.findAll();

        // 将所有记录传递给要返回的jsp页面，放在userList当中
        modelMap.addAttribute("userList", userList);

        // 返回pages目录下的admin/users.jsp页面
        return "admin/users";
    }
    @RequestMapping(value = "/carshop",method = RequestMethod.GET)
    public String text(){
        return "carshop/index";
    }
}
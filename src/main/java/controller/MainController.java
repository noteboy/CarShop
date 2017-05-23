package controller;

/**
 * Created by liuxiaolong on 2017/5/17.
 */


import model.UserEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import repository.CustomerRepository;
import repository.UserRepository;
import tools.CarMessage;

import java.util.List;

/**
 * Created by dzkan on 2016/3/8.
 */
@Controller
public class MainController {

    @Autowired
    UserRepository userRepository;
    @Autowired
    CustomerRepository customerRepository;
    @Autowired
    CarMessage carMessage;

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

    @RequestMapping(value = "/admin/user/users", method = RequestMethod.GET)
    public String getUsers(ModelMap modelMap) {
        // 查询user表中所有记录
        List<UserEntity> userList = userRepository.findAll();

        // 将所有记录传递给要返回的jsp页面，放在userList当中
        modelMap.addAttribute("userList", userList);

        // 返回pages目录下的admin/users.jsp页面
        return "admin/user/users";
    }

    // get请求，访问添加用户 页面
    @RequestMapping(value = "/admin/users/add", method = RequestMethod.GET)
    public String addUser() {
        // 转到 admin/addUser.jsp页面
        return "admin/user/addUser";
    }

    // post请求，处理添加用户请求，并重定向到用户管理页面
    @RequestMapping(value = "/admin/users/addP", method = RequestMethod.POST)
    public String addUserPost(@ModelAttribute("user") UserEntity userEntity) {
        // 注意此处，post请求传递过来的是一个UserEntity对象，里面包含了该用户的信息
        // 通过@ModelAttribute()注解可以获取传递过来的'user'，并创建这个对象

        // 数据库中添加一个用户，该步暂时不会刷新缓存
        //userRepository.save(userEntity);

        // 数据库中添加一个用户，并立即刷新缓存
        userRepository.saveAndFlush(userEntity);

        // 重定向到用户管理页面，方法为 redirect:url
        return "redirect:/admin/user/users";
    }
    @RequestMapping(value = "/carshop",method = RequestMethod.GET)
    public String text(ModelMap modelMap){
        List<String> carBank = carMessage.getBankType();
        System.out.println("汽车的品牌个数："+carBank.size());
        List<String> carType = carMessage.getCarType();
//        List<CarEntity> frontSixCar = carMessage.getFrontSixCar(6);
        modelMap.addAttribute("allBank",carBank);//添加数据库商标的类型
        modelMap.addAttribute("allCarType",carType);//汽车类型
  //      modelMap.addAttribute("frontSixCar",frontSixCar);//前六个汽车
        return "carshop/index";
    }
    @RequestMapping(value = "/details",method = RequestMethod.GET)
    public String getDetails(){
        return "carshop/one-products";
    }
    @RequestMapping(value = "/quickSearch",method = RequestMethod.GET)
    public String quickSearch(String manufacturer,String minprice,String maxprice,String type,
    ModelMap modelMap ){
        return "carshop/all-listings";
    }
}
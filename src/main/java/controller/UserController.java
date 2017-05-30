package controller;

import model.AdministratorEntity;
import model.CarEntity;
import model.ShopcarEntity;
import model.UserEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import service.AdministratorService;
import service.CarService;
import service.ShopcarService;
import service.UserService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

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
    CarService carService;
    @Autowired
    ShopcarService shopcarService;

    @Autowired
    AdministratorService administratorService;



    @RequestMapping(value = "/dologin",method = RequestMethod.POST)
    public String login(HttpServletRequest request, HttpServletResponse response, ModelMap modelMap)
    {
        UserEntity userEntity = userService.login(request.getParameter("username"),
                request.getParameter("password"));
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
        UserEntity userEntity = userService.register(new UserEntity(password1,username));
        if(userEntity!=null)
        {
            modelMap.addAttribute("user",userEntity);
            return "redirect:/carshop";
        }
        return "user/RegisterFailed";
    }



    @RequestMapping(value = "/addtoshopcar",method = RequestMethod.GET)
    public String addtoshopcar(ModelMap modelMap,int carId,int userId){
        CarEntity carEntity = carService.getCarById(carId);

        ShopcarEntity shopcarEntity = new ShopcarEntity();
        shopcarEntity.setcId(carEntity.getcId());
        shopcarEntity.setNumber(1);
        shopcarEntity.setTotalPrice(carEntity.getcPrice());
        shopcarEntity.setuId(userId);
        shopcarEntity.setImgurl(carEntity.getImgurl());
        shopcarService.addCar(shopcarEntity);
        return "/searchallcar";
    }

}

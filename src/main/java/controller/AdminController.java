package controller;

/**
 * Created by liuxiaolong on 2017/5/19.
 */


import model.CarEntity;
import model.UserEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import repository.CarRepository;
import repository.CustomerRepository;
import repository.UserRepository;
import service.implement.CarServicelmpl;

import java.util.List;

@Controller
public class AdminController {

    @Autowired
    UserRepository userRepository;
    @Autowired
    CustomerRepository customerRepository;
    @Autowired
    CarRepository carRepository;
    @Autowired
    CarServicelmpl carServicelmpl;


    // 查看用户详情
// @PathVariable可以收集url中的变量，需匹配的变量用{}括起来
// 例如：访问 localhost:8080/admin/users/show/1 ，将匹配 id = 1
    @RequestMapping(value = "/admin/users/show/{id}", method = RequestMethod.GET)
    public String showUser(@PathVariable("id") Integer userId, ModelMap modelMap) {

        // 找到userId所表示的用户
        UserEntity userEntity = userRepository.findOne(userId);

        // 传递给请求页面
        modelMap.addAttribute("user", userEntity);
        return "admin/user/userDetail";
    }


    // 更新用户信息 页面
    @RequestMapping(value = "/admin/users/update/{id}", method = RequestMethod.GET)
    public String updateUser(@PathVariable("id") Integer userId, ModelMap modelMap) {

        // 找到userId所表示的用户
        UserEntity userEntity = userRepository.findOne(userId);

        // 传递给请求页面
        modelMap.addAttribute("user", userEntity);
        return "admin/user/updateUser";
    }

    // 更新用户信息 操作
    @RequestMapping(value = "/admin/users/updateP", method = RequestMethod.POST)
    public String updateUserPost(@ModelAttribute("userP") UserEntity user) {

        // 更新用户信息
        userRepository.updateUser(user.getuName(), user.getuEmail(),user.getuPassword(), user.getuTellphone(), user.getuId());
        userRepository.flush(); // 刷新缓冲区
        return "redirect:/admin/user/users";
    }

    // 删除用户
    @RequestMapping(value = "/admin/users/delete/{id}", method = RequestMethod.GET)
    public String deleteUser(@PathVariable("id") Integer userId) {

        // 删除id为userId的用户
        userRepository.delete(userId);
        // 立即刷新
        userRepository.flush();
        return "redirect:/admin/user/users";
    }
///////////////////////汽车管理///////////////////////////

    @RequestMapping(value = "/admin/car/cars", method = RequestMethod.GET)
    public String getCars(ModelMap modelMap) {
        List<CarEntity> carList = carServicelmpl.queryAllCar();
        //List<CarEntity> carList = carRepository.findAll();
        modelMap.addAttribute("carList", carList);
        return "admin/car/cars";
    }

    @RequestMapping(value = "/admin/cars/delete/{id}", method = RequestMethod.GET)
    public String deleteCar(@PathVariable("id") Integer userId) {
        carServicelmpl.deleteCar(userId);
        return "redirect:/admin/car/cars";
    }

    @RequestMapping(value = "/admin/cars/add", method = RequestMethod.GET)
    public String addCar() {
        return "admin/car/addCar";
    }


    @RequestMapping(value = "/admin/cars/addP", method = RequestMethod.POST)
    public String addcarPost(@ModelAttribute("car") CarEntity carEntity) {

        //String a = "C:/Users/liuxiaolong/Documents/github/CarShop/src/main/webapp/carimagurl/" + carEntity.getImgurl();
        String a ="http://localhost:8080/carimagurl/" + carEntity.getImgurl();
        carEntity.setImgurl(a);
        carServicelmpl.addCar(carEntity);
        return "redirect:/admin/car/cars";
    }

    @RequestMapping(value = "/admin/cars/update/{id}", method = RequestMethod.GET)
    public String updateCar(@PathVariable("id") Integer carId, ModelMap modelMap) {
        CarEntity carEntity = carRepository.findOne(carId);
        modelMap.addAttribute("car", carEntity);
        return "admin/car/updateCar";
    }

    @RequestMapping(value = "/admin/cars/updateP", method = RequestMethod.POST)
    public String updateCarPost(@ModelAttribute("carP") CarEntity car) {

        String s = "C:\\Users\\liuxiaolong\\Documents\\github\\CarShop\\src\\main\\webapp\\carimagurl\\" + car.getImgurl();
        car.setImgurl(s);
        carServicelmpl.updateCar(car);
        return "redirect:/admin/car/cars";
    }

    @RequestMapping(value = "/admin/cars/show/{id}", method = RequestMethod.GET)
    public String showCar(@PathVariable("id") Integer carId, ModelMap modelMap) {

        // 找到userId所表示的用户
        CarEntity carEntity = carRepository.findOne(carId);

        // 传递给请求页面
        modelMap.addAttribute("car", carEntity);
        return "admin/car/carDetails";
    }
}

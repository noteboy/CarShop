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
import service.CarService;
import service.UserService;
import service.implement.CarServicelmpl;

import java.util.List;

@Controller
public class AdminController {

    @Autowired
    UserService userService;
    @Autowired
    CarService carService;


    @RequestMapping(value = "/admin/users/show/{id}", method = RequestMethod.GET)
    public String showUser(@PathVariable("id") Integer userId, ModelMap modelMap) {

       // UserEntity userEntity = userRepository.findOne(userId);
        UserEntity userEntity = userService.querySingleUser(userId);
        modelMap.addAttribute("user", userEntity);
        return "admin/user/userDetail";
    }



    @RequestMapping(value = "/admin/users/update/{id}", method = RequestMethod.GET)
    public String updateUser(@PathVariable("id") Integer userId, ModelMap modelMap) {
       // UserEntity userEntity = userRepository.findOne(userId);
        UserEntity userEntity = userService.querySingleUser(userId);
        modelMap.addAttribute("user", userEntity);
        return "admin/user/updateUser";
    }


    @RequestMapping(value = "/admin/users/updateP", method = RequestMethod.POST)
    public String updateUserPost(@ModelAttribute("userP") UserEntity user) {

        userService.updateUser(user);
        return "redirect:/admin/user/users";
    }

    // 删除用户
    @RequestMapping(value = "/admin/users/delete/{id}", method = RequestMethod.GET)
    public String deleteUser(@PathVariable("id") Integer userId) {

        userService.deleteUser(userId);
        return "redirect:/admin/user/users";
    }
///////////////////////汽车管理///////////////////////////

    @RequestMapping(value = "/admin/car/cars", method = RequestMethod.GET)
    public String getCars(ModelMap modelMap) {
        List<CarEntity> carList = carService.queryAllCar();
        //List<CarEntity> carList = carRepository.findAll();
        modelMap.addAttribute("carList", carList);
        return "admin/car/cars";
    }

    @RequestMapping(value = "/admin/cars/delete/{id}", method = RequestMethod.GET)
    public String deleteCar(@PathVariable("id") Integer userId) {
        carService.deleteCar(userId);
        return "redirect:/admin/car/cars";
    }

    @RequestMapping(value = "/admin/cars/add", method = RequestMethod.GET)
    public String addCar() {
        return "admin/car/addCar";
    }


    @RequestMapping(value = "/admin/cars/addP", method = RequestMethod.POST)
    public String addcarPost(@ModelAttribute("car") CarEntity carEntity) {

        String a ="http://localhost:8080/carimagurl/" + carEntity.getImgurl();
        carEntity.setImgurl(a);
        carService.addCar(carEntity);
        return "redirect:/admin/car/cars";
    }

    @RequestMapping(value = "/admin/cars/update/{id}", method = RequestMethod.GET)
    public String updateCar(@PathVariable("id") Integer carId, ModelMap modelMap) {
        CarEntity carEntity = carService.getCarById(carId);
        modelMap.addAttribute("car", carEntity);
        return "admin/car/updateCar";
    }

    @RequestMapping(value = "/admin/cars/updateP", method = RequestMethod.POST)
    public String updateCarPost(@ModelAttribute("carP") CarEntity car) {

        String s = "http://localhost:8080/carimagurl/" + car.getImgurl();
        car.setImgurl(s);
        carService.updateCar(car);
        return "redirect:/admin/car/cars";
    }

    @RequestMapping(value = "/admin/cars/show/{id}", method = RequestMethod.GET)
    public String showCar(@PathVariable("id") Integer carId, ModelMap modelMap) {

        // 找到userId所表示的用户
        CarEntity carEntity = carService.getCarById(carId);

        // 传递给请求页面
        modelMap.addAttribute("car", carEntity);
        return "admin/car/carDetails";
    }
}

package controller;

/**
 * Created by liuxiaolong on 2017/5/17.
 */


import model.AdministratorEntity;
import model.CarEntity;
import model.ShopcarEntity;
import model.UserEntity;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import repository.UserRepository;
import service.CarService;
import service.ShopcarService;
import service.UserService;
import tools.CarMessage;
import java.util.Date;
import java.text.SimpleDateFormat;
import java.util.List;

/**
 * Created by dzkan on 2016/3/8.
 */
@Controller
public class MainController {


    @Autowired
    CarMessage carMessage;

    @Autowired
    CarService carService;
    @Autowired
    UserService userService;
    @Autowired
    ShopcarService shopcarService;


    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index(ModelMap modelMap) {
        List<String> carBank = carMessage.getBankType();
        System.out.println("汽车的品牌个数："+carBank.size());
        List<String> carType = carMessage.getCarType();
        List<CarEntity> frontSixCar = carMessage.getFrontSixCar(6);
        modelMap.addAttribute("allBank",carBank);//添加数据库商标的类型
        modelMap.addAttribute("allCarType",carType);//汽车类型
        modelMap.addAttribute("frontSixCar",frontSixCar);//前六个汽车
        return "carshop/index";
    }

    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String index2(ModelMap modelMap) {
        List<String> carBank = carMessage.getBankType();
        System.out.println("汽车的品牌个数："+carBank.size());
        List<String> carType = carMessage.getCarType();
        List<CarEntity> frontSixCar = carMessage.getFrontSixCar(6);
        modelMap.addAttribute("allBank",carBank);//添加数据库商标的类型
        modelMap.addAttribute("allCarType",carType);//汽车类型
        modelMap.addAttribute("frontSixCar",frontSixCar);//前六个汽车
        return "carshop/index";
    }

    @RequestMapping(value = "/admin/user/users", method = RequestMethod.GET)
    public String getUsers(ModelMap modelMap) {
        List<UserEntity> userList = userService.queryAllUser();
        modelMap.addAttribute("userList", userList);
        return "admin/user/users";
    }


    @RequestMapping(value = "/admin/users/add", method = RequestMethod.GET)
    public String addUser() {
        return "admin/user/addUser";
    }

    @RequestMapping(value = "/admin/users/addP", method = RequestMethod.POST)
    public String addUserPost(@ModelAttribute("user") UserEntity userEntity) {

        userService.addUser(userEntity);

        return "redirect:/admin/user/users";
    }
    @RequestMapping(value = "/carshop",method = RequestMethod.GET)
    public String firstPage(ModelMap modelMap){
        List<String> carBank = carMessage.getBankType();
        System.out.println("汽车的品牌个数："+carBank.size());
        List<String> carType = carMessage.getCarType();
        List<CarEntity> frontSixCar = carMessage.getFrontSixCar(6);
        modelMap.addAttribute("allBank",carBank);//添加数据库商标的类型
        modelMap.addAttribute("allCarType",carType);//汽车类型
        modelMap.addAttribute("frontSixCar",frontSixCar);//前六个汽车
        return "carshop/index";
    }
    @RequestMapping(value = "/details",method = RequestMethod.GET)
    public String getDetails(String carId,ModelMap modelMap,String userId){
        System.out.println("carId:" + carId);
        CarEntity carEntity = carService.getCarById(Integer.parseInt(carId));
        modelMap.addAttribute("Car",carEntity);
        List<String> carBank = carMessage.getBankType();
        //System.out.println("汽车的品牌个数："+carBank.size());
        List<String> carType = carMessage.getCarType();
        modelMap.addAttribute("allBank",carBank);//添加数据库商标的类型
        modelMap.addAttribute("allCarType",carType);//汽车类型


        ShopcarEntity shopcarEntity = new ShopcarEntity();
        shopcarEntity.setcId(carEntity.getcId());
        shopcarEntity.setNumber(1);
        shopcarEntity.setTotalPrice(carEntity.getcPrice());
        shopcarEntity.setuId(Integer.parseInt(userId));
        shopcarEntity.setImgurl(carEntity.getImgurl());
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        shopcarEntity.setCreateTime(df.format(new Date()));
        shopcarService.addCar(shopcarEntity);


        return "carshop/one-products";
    }

    @RequestMapping(value = "/detail",method = RequestMethod.GET)
    public String getDetails(String carId,ModelMap modelMap){
        System.out.println("carId:" + carId);
        CarEntity carEntity = carService.getCarById(Integer.parseInt(carId));
        modelMap.addAttribute("Car",carEntity);
        List<String> carBank = carMessage.getBankType();
        //System.out.println("汽车的品牌个数："+carBank.size());
        List<String> carType = carMessage.getCarType();
        modelMap.addAttribute("allBank",carBank);//添加数据库商标的类型
        modelMap.addAttribute("allCarType",carType);//汽车类型

        return "carshop/one-products";
    }
    @RequestMapping(value = "/deleteShopcar/{id}", method = RequestMethod.GET)
    public String deleteCar(@PathVariable("id") Integer scId) {
        ShopcarEntity shopcarEntity = shopcarService.qureyCarByScid(scId);
        int userId = shopcarEntity.getuId();
        shopcarService.deleteCar(scId);


        return "redirect:/shopcars?userId=" + userId;
    }


    @RequestMapping(value = "/quickSearch",method = RequestMethod.GET)
    public String quickSearch(String manufacturer,String minprice,String maxprice,String type,
    ModelMap modelMap ){
        List<CarEntity> allSearchCar = carService.queryCarByCondition(manufacturer,Integer.parseInt(minprice),
                Integer.parseInt(maxprice),type);
        System.out.print(manufacturer);
        modelMap.addAttribute("allSearchCar",allSearchCar);
        List<String> carBank = carMessage.getBankType();
        //System.out.println("汽车的品牌个数："+carBank.size());
        List<String> carType = carMessage.getCarType();
        modelMap.addAttribute("allBank",carBank);//添加数据库商标的类型
        modelMap.addAttribute("allCarType",carType);//汽车类型

        return "carshop/all-listings";
    }



    @RequestMapping(value = "/searchallcar",method = RequestMethod.GET)
    public String Search(
                              ModelMap modelMap ){
        List<CarEntity> allSearchCar = carService.queryAllCar();

        modelMap.addAttribute("allSearchCar",allSearchCar);
        List<String> carBank = carMessage.getBankType();
        //System.out.println("汽车的品牌个数："+carBank.size());
        List<String> carType = carMessage.getCarType();
        modelMap.addAttribute("allBank",carBank);//添加数据库商标的类型
        modelMap.addAttribute("allCarType",carType);//汽车类型

        return "carshop/all-listings";
    }


    @RequestMapping(value = "/shopcars",method = RequestMethod.GET)
    public String shopcar(ModelMap modelMap,String userId){
        List<ShopcarEntity>  shopcarList = shopcarService.qureyCarByUid(Integer.parseInt(userId));
        modelMap.addAttribute("allSearchCar",shopcarList);
        return "carshop/shopcar";
    }


}
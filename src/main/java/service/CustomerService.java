package service;


import model.CustomerEntity;
import model.ShopcarEntity;
import model.UserEntity;

import java.util.List;

/**
 * Created by mingjian on 2017/5/18 0018.
 * 顾客service
 */
public interface CustomerService {
    /**
     * 修改个人信息
     *@param
     *@return 注册是否成功，成功返回true ，否则返回false
    **/
    public boolean modify(CustomerEntity customerEntity);
/**
 * 查看个人信息
 * @return 返回User实体*/
    public UserEntity queryInfo();
    /**
     * 添加购物车
     *
     * */
    public boolean addShopCar(ShopcarEntity shopCar);
    public boolean deleteShopCar(ShopcarEntity shopCar);
    /**
     * 购买购物车中的car*/
    public boolean buyShopCar(ShopcarEntity shopCar);
    /**
     * 修改购买数量*/
    public boolean modifyNumber(int number);
    public List<ShopcarEntity> queryShopCar();
}

package service;


import model.CarEntity;
import model.UserEntity;

import java.util.List;

/**
 * Created by mingjian on 2017/5/18 0018.
 * 游客service
 */

public interface UserService {
    /**
    *用户注册功能
    * @param  user
    * @return 注册是否成功，成功返回true ，否则返回false
    * */
    public UserEntity register(UserEntity user);
    /**
     * 用户登录功能
     * @param name
     * 可以传入user的子类
     * @return 注册是否成功，成功返回true ，否则返回false
     * */
    public UserEntity login(String name,String password);
/**
 * 查询汽车功能
 * @param name 汽车名称
 * @param brank 汽车品牌
 * @return 返回car实体
 * */
    public List<CarEntity> queryCar(String name, String brank);
}

package service;


import model.CarEntity;
import model.UserEntity;

import java.util.List;

/**
 * Created by mingjian on 2017/5/18 0018.
 * 游客service
 */

public interface UserService {

    public UserEntity register(UserEntity user);
    public UserEntity login(String name,String password);
    public List<CarEntity> queryCar(String name, String brank);
    public List<UserEntity> queryAllUser();
    public UserEntity querySingleUser(int id);
    public void deleteUser(int id);
    public void addUser(UserEntity userEntity);
    public void updateUser(UserEntity user);
}

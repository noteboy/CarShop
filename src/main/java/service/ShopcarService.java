package service;

import model.AdministratorEntity;
import model.CarEntity;
import model.ShopcarEntity;
import model.UserEntity;

import java.util.List;

/**
 * Created by liuxiaolong on 2017/5/30.
 */
public interface ShopcarService {
    public void addCar(ShopcarEntity car);
    public List<ShopcarEntity> qureyCar();
    public void deleteCar(int scid);
    public List<ShopcarEntity> qureyCarByUid(int uId);
    public ShopcarEntity qureyCarByScid(int scId);

}

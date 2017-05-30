package service;

import model.CarEntity;

import java.util.List;

/**
 * Created by liuxiaolong on 2017/5/29.
 */
public interface CarService {


    public List<CarEntity> queryAllCar();;
    public CarEntity querySingleCar(int id);
    public void deleteCar(int id);
    public void addCar(CarEntity carEntity);
    public void updateCar(CarEntity car);
    public List<CarEntity> queryCarByCondition(String cBand
            ,int minPrice,int maxPrice, String cType);
    public CarEntity getCarById(int carId);
}

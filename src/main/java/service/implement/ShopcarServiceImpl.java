package service.implement;

import model.CarEntity;
import model.ShopcarEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import repository.AdministratorRepository;
import repository.ShopcarRepository;
import service.ShopcarService;

import java.util.List;

/**
 * Created by liuxiaolong on 2017/5/30.
 */
@Service
public class ShopcarServiceImpl implements ShopcarService{


    @Autowired
    ShopcarRepository shopcarRepository;


    @Override
    public void addCar(ShopcarEntity car) {
        shopcarRepository.saveAndFlush(car);
    }

    @Override
    public List<ShopcarEntity> qureyCar() {
       return shopcarRepository.findAll();
    }

    @Override
    public void deleteCar(int scid) {
        ShopcarEntity shopcarEntity = shopcarRepository.findOne(scid);
        shopcarRepository.delete(shopcarEntity);
    }

    @Override
    public List<ShopcarEntity> qureyCarByUid(int uId) {
        return  shopcarRepository.qureyCarByUids(uId);
    }

    @Override
    public ShopcarEntity qureyCarByScid(int scId) {
        return shopcarRepository.qureyCarByid(scId);
    }
}

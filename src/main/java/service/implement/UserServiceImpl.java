package service.implement;

import model.CarEntity;
import model.UserEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import repository.CarRepository;
import repository.UserRepository;
import service.UserService;

import java.util.List;

/**
 * Created by Administrator on 2017/5/18 0018.
 */
@Service
public class UserServiceImpl implements UserService {
    @Autowired
    UserRepository userRepository;
    @Autowired
    CarRepository carRepository;
    @Override
    public boolean register(UserEntity user) {
        UserEntity userEntity = userRepository.queryUserByName(user.getuName());
        if(userEntity!=null)
            return true;
        return false;
    }

    @Override
    public UserEntity login(String name,String password) {
        return    userRepository.queryUserByNameAndPassword(name,password);

    }

    @Override
    public List<CarEntity> queryCar(String name, String brank) {
        List<CarEntity> car = null;
        if(!(name==""||name!=null)&&!(brank==""||brank!=null))
            car = carRepository.queryCarByBandAndName(name,brank);
        else if(!(name==""||name!=null))
            car = carRepository.queryCarByBand(brank);
        else if(!(brank==""||brank!=null))
            car = carRepository.queryCarByBand(brank);
        else
            car=carRepository.findAll();
        return car;
    }
}

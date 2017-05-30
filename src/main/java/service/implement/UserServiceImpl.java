package service.implement;

import model.CarEntity;
import model.CustomerEntity;
import model.UserEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import repository.CarRepository;
import repository.CustomerRepository;
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
    @Autowired
    CustomerRepository customerRepository;
    @Override
    public UserEntity register(UserEntity user) {
        UserEntity userEntity = userRepository.queryUserByName(user.getuName());
        if(userEntity!=null)
            return userEntity;
        userRepository.save(user);
        UserEntity userEntity1 = userRepository.queryUserByName(user.getuName());
        //save to customer
        customerRepository.save(new CustomerEntity(userEntity1.getuId()));
        return userEntity1;
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


    public List<UserEntity> queryAllUser() {
        List<UserEntity> user = null;
        user = userRepository.findAll();
        return user;
    }


    public UserEntity querySingleUser(int id){
        UserEntity singleuser = null;
        singleuser = userRepository.findOne(id);
        return singleuser;
    }

    public void deleteUser(int id){
        userRepository.delete(id);
        userRepository.flush();
    }

    public void addUser(UserEntity userEntity){
        userRepository.saveAndFlush(userEntity);

    }

    public void updateUser(UserEntity user){
        userRepository.updateUser(user.getuName(),user.getuName(),user.getuPassword(),user.getuTellphone(),user.getuId());
        userRepository.flush();
    }



}

package service.implement;

import model.CarEntity;
import model.UserEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import repository.UserRepository;
import service.UserService;

/**
 * Created by Administrator on 2017/5/18 0018.
 */
@Service
public class UserServiceImpl implements UserService {
    @Autowired
    UserRepository userRepository;
    @Override
    public boolean register(UserEntity user) {
        return false;
    }

    @Override
    public UserEntity login(String name,String password) {
        return    userRepository.queryUserByNameAndPassword(name,password);

    }

    @Override
    public CarEntity queryCar(String carId, String brank) {
        return null;
    }
}

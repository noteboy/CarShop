package service.implement;

import model.CarEntity;
import model.UserEntity;
import service.UserService;

/**
 * Created by Administrator on 2017/5/18 0018.
 */
public class UserServiceImpl implements UserService {
    @Override
    public boolean register(UserEntity user) {
        return false;
    }

    @Override
    public boolean login(UserEntity user) {
        return false;
    }

    @Override
    public CarEntity queryCar(String carId, String brank) {
        return null;
    }
}

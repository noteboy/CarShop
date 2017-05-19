package service;

import model.CarEntity;
import model.UserEntity;

import java.util.List;

/**
 * Created by Administrator on 2017/5/18 0018.
 */
public interface AdministratorService {
    public boolean addCar(CarEntity car);
    public boolean modifycar(CarEntity car);
    public List<CarEntity> qureyCar();
    public boolean deleteCar(CarEntity car);
    public boolean addUser(UserEntity user);
    public boolean modifyUser(UserEntity user);
    public boolean grantVip(UserEntity user);
    public boolean revokeVip(UserEntity user);
    public boolean deleteUser(UserEntity user);
    public List<UserEntity> queryUser();
}

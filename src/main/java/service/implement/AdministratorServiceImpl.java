package service.implement;

import model.AdministratorEntity;
import model.CarEntity;
import model.UserEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import repository.AdministratorRepository;
import service.AdministratorService;

import java.util.List;

/**
 * Created by liuxiaolong on 2017/5/30.
 */
@Service
public class AdministratorServiceImpl implements AdministratorService{
    @Autowired
    AdministratorRepository administratorRepository;


    @Override
    public boolean addCar(CarEntity car) {
        return false;
    }

    @Override
    public boolean modifycar(CarEntity car) {
        return false;
    }

    @Override
    public List<CarEntity> qureyCar() {
        return null;
    }

    @Override
    public boolean deleteCar(CarEntity car) {
        return false;
    }

    @Override
    public boolean addUser(UserEntity user) {
        return false;
    }

    @Override
    public boolean modifyUser(UserEntity user) {
        return false;
    }

    @Override
    public boolean grantVip(UserEntity user) {
        return false;
    }

    @Override
    public boolean revokeVip(UserEntity user) {
        return false;
    }

    @Override
    public boolean deleteUser(UserEntity user) {
        return false;
    }

    @Override
    public List<UserEntity> queryUser() {
        return null;
    }

    public AdministratorEntity loginA(int id) {
        return    administratorRepository.queryAdministratorById(id);

    }
}

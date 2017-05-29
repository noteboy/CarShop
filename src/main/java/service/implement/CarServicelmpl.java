package service.implement;

/**
 * Created by liuxiaolong on 2017/5/29.
 */

import model.CarEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import repository.CarRepository;
import repository.CustomerRepository;
import repository.UserRepository;
import service.CarService;
import java.util.List;


@Service
public class CarServicelmpl implements CarService{
    @Autowired
    UserRepository userRepository;
    @Autowired
    CarRepository carRepository;
    @Autowired
    CustomerRepository customerRepository;

    public List<CarEntity> queryAllCar() {
        List<CarEntity> car = null;
        car=carRepository.findAll();
        return car;
    }


    public CarEntity querySingleCar(int id){
        CarEntity singlecar = null;
        singlecar = carRepository.findOne(id);
        return singlecar;
    }

    public void deleteCar(int id){
        carRepository.delete(id);
        carRepository.flush();
    }

    public void addCar(CarEntity carEntity){
        carRepository.saveAndFlush(carEntity);

    }

    public void updateCar(CarEntity car){
        carRepository.updateUser(car.getcName(),car.getcBand(),car.getcColor(),car.getcPrice(),car.getcType(),car.getcId());
    }
}

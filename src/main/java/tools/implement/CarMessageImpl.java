package tools.implement;


import model.CarEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import repository.CarRepository;
import tools.CarMessage;

import java.util.List;

/**
 * Created by Administrator on 2017/5/23 0023.
 */
@Component
public class CarMessageImpl implements CarMessage{
    @Autowired
    CarRepository carRepository;
    public List<String> getBankType(){
        return carRepository.queryBrandKind();
    }

    @Override
    public List<String> getCarType() {
        return carRepository.queryTypeKind();
    }

    @Override
    public List<CarEntity> getFrontSixCar(int n) {
        List<CarEntity> allCar = carRepository.findAll();
        List<CarEntity> frontSixCar =null;
        for (int i=0;i<n;i++) {
            frontSixCar.add(allCar.get(i));
        }
        return frontSixCar;
    }
}

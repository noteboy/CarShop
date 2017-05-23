package tools;

import model.CarEntity;

import java.util.List;

/**
 * Created by Administrator on 2017/5/23 0023.
 */
public interface CarMessage {
    //获取汽车品牌
    public List<String> getBankType();
    //获取汽车类型
    public List<String> getCarType();
    //查询前六个汽车
    public List<CarEntity> getFrontSixCar(int n);
}

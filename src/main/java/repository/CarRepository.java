package repository;


import model.CarEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


/**
 * Created by liuxiaolong on 2017/5/19.
 */

public interface CarRepository extends JpaRepository<CarEntity, Integer> {
    @Query("from  CarEntity  car where cId = :cId")
    public CarEntity queryCarById(@Param("cId")int cId);
    @Query("from CarEntity car where cName=:cName")
    public List<CarEntity> queryCarByName(@Param("cName")String cName);
    @Query("from CarEntity car where cBand=:cBand")
    public List<CarEntity> queryCarByBand(@Param("cBand")String cBand);
    @Query("from CarEntity car where cBand=:cBand and cName=:cName")
    public List<CarEntity>queryCarByBandAndName(@Param("cBand")String cBand,@Param("cName")String cName);
    //查询商标的种类去掉重复
    @Query("select distinct cBand from CarEntity car ")
    public List<String> queryBrandKind();
    //查询车型的种类去掉重复
    @Query("select distinct cType from CarEntity car ")
    public List<String> queryTypeKind();
    //按条件查询汽车
    @Query("from CarEntity  car where car.cBand=:cBand and car.cType=:cType and " +
            "car.cPrice>=:minPrice and car.cPrice<=:maxPrice ")
    public List<CarEntity> queryCarByCondition(@Param("cBand") String cBand
    ,@Param("minPrice") int minPrice,@Param("maxPrice") int maxPrice, @Param("cType") String cType);


    @Modifying      // 说明该方法是修改操作
    @Transactional  // 说明该方法是事务性操作
    // 定义查询
    // @Param注解用于提取参数
    @Query("update CarEntity us set us.cName=:cName, us.cBand=:cBand, us.cColor=:cColor, us.cPrice=:cPrice, us.cType=:cType where us.cId=:cId")
    public void updateCar(@Param("cName") String cName, @Param("cBand") String cBand,
                           @Param("cColor") String cColor, @Param("cPrice") int cPrice , @Param("cType") String cType, @Param("cId") Integer cId);

}

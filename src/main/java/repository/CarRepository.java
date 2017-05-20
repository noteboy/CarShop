package repository;


import model.CarEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;


/**
 * Created by liuxiaolong on 2017/5/19.
 */

public interface CarRepository extends JpaRepository<CarEntity, Integer> {
    @Query("from CarEntity car where cName=:cName")
    public List<CarEntity> queryCarByName(@Param("cName")String cName);
    @Query("from CarEntity car where cBand=:cBand")
    public List<CarEntity> queryCarByBand(@Param("cBand")String cBand);
    @Query("from CarEntity car where cBand=:cBand and cName=:cName")
    public List<CarEntity>queryCarByBandAndName(@Param("cBand")String cBand,@Param("cName")String cName);
}

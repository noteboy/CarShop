package repository;

/**
 * Created by liuxiaolong on 2017/5/19.
 */

import model.ShopcarEntity;
import model.UserEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;


public interface ShopcarRepository extends JpaRepository<ShopcarEntity, Integer>{

    @Query("from ShopcarEntity where uId=:uId")
    public List<ShopcarEntity> qureyCarByUids(@Param("uId") int uId);

    @Query("from ShopcarEntity where scId=:scId")
    public ShopcarEntity qureyCarByid(@Param("scId") int scId);


}

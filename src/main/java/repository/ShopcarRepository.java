package repository;

/**
 * Created by liuxiaolong on 2017/5/19.
 */

import model.ShopcarEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


public interface ShopcarRepository extends JpaRepository<ShopcarEntity, Integer>{

}

package repository;


import model.CarEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


/**
 * Created by liuxiaolong on 2017/5/19.
 */

public interface CarRepository extends JpaRepository<CarEntity, Integer> {
}

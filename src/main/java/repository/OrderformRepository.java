package repository;

/**
 * Created by liuxiaolong on 2017/5/19.
 */

import model.OrderformEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

public interface OrderformRepository extends JpaRepository<OrderformEntity, Integer>{

}

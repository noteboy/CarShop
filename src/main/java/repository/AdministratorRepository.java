package repository;

/**
 * Created by liuxiaolong on 2017/5/19.
 */

import model.AdministratorEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


/**
 * Created by liuxiaolong on 2017/5/19.
 */
public interface AdministratorRepository extends JpaRepository<AdministratorEntity, Integer> {
}

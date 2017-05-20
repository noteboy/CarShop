package repository;


import model.AdministratorEntity;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by liuxiaolong on 2017/5/19.
 */
public interface AdministratorRepository extends JpaRepository<AdministratorEntity, Integer> {
}

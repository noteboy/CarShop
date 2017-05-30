package repository;

/**
 * Created by liuxiaolong on 2017/5/19.
 */

import model.AdministratorEntity;
import model.UserEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;


/**
 * Created by liuxiaolong on 2017/5/19.
 */
public interface AdministratorRepository extends JpaRepository<AdministratorEntity, Integer> {

    @Query("from AdministratorEntity user where user.uId=:uId")
    public AdministratorEntity queryAdministratorById( @Param("uId")int uId);


}

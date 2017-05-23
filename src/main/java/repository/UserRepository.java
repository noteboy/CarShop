package repository;

/**
 * Created by liuxiaolong on 2017/5/17.
        */
        import model.UserEntity;
import org.springframework.data.jpa.repository.JpaRepository;
        import org.springframework.data.jpa.repository.Modifying;
        import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
        import org.springframework.transaction.annotation.Transactional;

@Repository
public interface UserRepository extends JpaRepository<UserEntity, Integer> {
        @Query("from UserEntity where uName=:uName")
        public UserEntity queryUserByName(@Param("uName") String uName);

        @Query("from UserEntity user where user.uName=:uName and user.uPassword=:uPassword")
        public UserEntity queryUserByNameAndPassword(@Param("uName")String uName,@Param("uPassword")String uPassword);

        @Modifying      // 说明该方法是修改操作
        @Transactional  // 说明该方法是事务性操作
        // 定义查询
        // @Param注解用于提取参数
        @Query("update UserEntity us set us.uName=:uName, us.uEmail=:uEmail, us.uPassword=:uPassword, us.uTellphone=:uTellphone where us.uId=:uId")
        public void updateUser(@Param("uName") String uName, @Param("uEmail") String uEmail,
                               @Param("uPassword") String uPassword, @Param("uTellphone") String uTellphone, @Param("uId") Integer uId);


}
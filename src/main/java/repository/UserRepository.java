package repository;

/**
 * Created by liuxiaolong on 2017/5/17.
        */
        import model.UserEntity;
        import org.springframework.data.jpa.repository.JpaRepository;
        import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<UserEntity, Integer> {
}
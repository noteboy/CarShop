package model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Created by liuxiaolong on 2017/5/18.
 */
@Entity
@Table(name = "administrator", schema = "carshop", catalog = "")
public class AdministratorEntity {
    private int aId;

    @Id
    @Column(name = "a_id", nullable = false)
    public int getaId() {
        return aId;
    }

    public void setaId(int aId) {
        this.aId = aId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        AdministratorEntity that = (AdministratorEntity) o;

        if (aId != that.aId) return false;

        return true;
    }

    @Override
    public int hashCode() {
        return aId;
    }
}

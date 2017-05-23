package model;

import javax.persistence.*;

/**
 * Created by liuxiaolong on 2017/5/18.
 */
@Entity
@Table(name = "administrator", schema = "carshop", catalog = "")
public class AdministratorEntity {
    private int aId;
    private int uId;

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

    @Basic
    @Column(name = "u_id", nullable = false)
    public int getuId() {
        return uId;
    }

    public void setuId(int uId) {
        this.uId = uId;
    }
}

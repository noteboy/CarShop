package model;

import javax.persistence.*;

/**
 * Created by liuxiaolong on 2017/5/18.
 */
@Entity
@Table(name = "customer", schema = "carshop", catalog = "")
public class CustomerEntity {
    private int cId;
    private int uId;

    public CustomerEntity() {
    }

    public CustomerEntity(int uId) {
        this.uId = uId;
    }

    @Id
    @Column(name = "c_id", nullable = false)
    public int getcId() {
        return cId;
    }

    public void setcId(int cId) {
        this.cId = cId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        CustomerEntity that = (CustomerEntity) o;

        if (cId != that.cId) return false;

        return true;
    }

    @Override
    public int hashCode() {
        return cId;
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

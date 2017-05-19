package model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Created by liuxiaolong on 2017/5/18.
 */
@Entity
@Table(name = "customer", schema = "carshop", catalog = "")
public class CustomerEntity {
    private int cId;

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
}

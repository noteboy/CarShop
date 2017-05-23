package model;

import javax.persistence.*;

/**
 * Created by liuxiaolong on 2017/5/18.
 */
@Entity
@Table(name = "vipcustomer", schema = "carshop", catalog = "")
public class VipcustomerEntity {
    private int vId;
    private int uId;

    @Id
    @Column(name = "v_id", nullable = false)
    public int getvId() {
        return vId;
    }

    public void setvId(int vId) {
        this.vId = vId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        VipcustomerEntity that = (VipcustomerEntity) o;

        if (vId != that.vId) return false;

        return true;
    }

    @Override
    public int hashCode() {
        return vId;
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

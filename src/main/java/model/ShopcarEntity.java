package model;

import javax.persistence.*;

/**
 * Created by liuxiaolong on 2017/5/18.
 */
@Entity
@Table(name = "shopcar", schema = "carshop", catalog = "")
public class ShopcarEntity {
    private int scId;
    private String createTime;
    private int number;
    private int totalPrice;
    private int uId;
    private int cId;

    @Id
    @Column(name = "sc_id", nullable = false)
    public int getScId() {
        return scId;
    }

    public void setScId(int scId) {
        this.scId = scId;
    }

    @Basic
    @Column(name = "create_time", nullable = false, length = 40)
    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }

    @Basic
    @Column(name = "number", nullable = false)
    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    @Basic
    @Column(name = "total_price", nullable = false)
    public int getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(int totalPrice) {
        this.totalPrice = totalPrice;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        ShopcarEntity that = (ShopcarEntity) o;

        if (scId != that.scId) return false;
        if (number != that.number) return false;
        if (totalPrice != that.totalPrice) return false;
        if (createTime != null ? !createTime.equals(that.createTime) : that.createTime != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = scId;
        result = 31 * result + (createTime != null ? createTime.hashCode() : 0);
        result = 31 * result + number;
        result = 31 * result + totalPrice;
        return result;
    }

    @Basic
    @Column(name = "u_id", nullable = false)
    public int getuId() {
        return uId;
    }

    public void setuId(int uId) {
        this.uId = uId;
    }

    @Basic
    @Column(name = "c_id", nullable = false)
    public int getcId() {
        return cId;
    }

    public void setcId(int cId) {
        this.cId = cId;
    }
}

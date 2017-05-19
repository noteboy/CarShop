package model;

import javax.persistence.*;

/**
 * Created by liuxiaolong on 2017/5/18.
 */
@Entity
@Table(name = "orderform", schema = "carshop", catalog = "")
public class OrderformEntity {
    private int oId;
    private String createTime;
    private int orignPrice;
    private int finalPrice;
    private int number;

    @Id
    @Column(name = "o_id", nullable = false)
    public int getoId() {
        return oId;
    }

    public void setoId(int oId) {
        this.oId = oId;
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
    @Column(name = "orign_price", nullable = false)
    public int getOrignPrice() {
        return orignPrice;
    }

    public void setOrignPrice(int orignPrice) {
        this.orignPrice = orignPrice;
    }

    @Basic
    @Column(name = "final_price", nullable = false)
    public int getFinalPrice() {
        return finalPrice;
    }

    public void setFinalPrice(int finalPrice) {
        this.finalPrice = finalPrice;
    }

    @Basic
    @Column(name = "number", nullable = false)
    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        OrderformEntity that = (OrderformEntity) o;

        if (oId != that.oId) return false;
        if (orignPrice != that.orignPrice) return false;
        if (finalPrice != that.finalPrice) return false;
        if (number != that.number) return false;
        if (createTime != null ? !createTime.equals(that.createTime) : that.createTime != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = oId;
        result = 31 * result + (createTime != null ? createTime.hashCode() : 0);
        result = 31 * result + orignPrice;
        result = 31 * result + finalPrice;
        result = 31 * result + number;
        return result;
    }
}

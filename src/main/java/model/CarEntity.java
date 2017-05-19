package model;

import javax.persistence.*;

/**
 * Created by liuxiaolong on 2017/5/18.
 */
@Entity
@Table(name = "car", schema = "carshop", catalog = "")
public class CarEntity {
    private int cId;
    private String cName;
    private String cPrice;
    private String cType;
    private String cBand;
    private String cColor;

    @Id
    @Column(name = "c_id", nullable = false)
    public int getcId() {
        return cId;
    }

    public void setcId(int cId) {
        this.cId = cId;
    }

    @Basic
    @Column(name = "c_name", nullable = false, length = 40)
    public String getcName() {
        return cName;
    }

    public void setcName(String cName) {
        this.cName = cName;
    }

    @Basic
    @Column(name = "c_price", nullable = false, length = 40)
    public String getcPrice() {
        return cPrice;
    }

    public void setcPrice(String cPrice) {
        this.cPrice = cPrice;
    }

    @Basic
    @Column(name = "c_type", nullable = false, length = 40)
    public String getcType() {
        return cType;
    }

    public void setcType(String cType) {
        this.cType = cType;
    }

    @Basic
    @Column(name = "c_band", nullable = false, length = 40)
    public String getcBand() {
        return cBand;
    }

    public void setcBand(String cBand) {
        this.cBand = cBand;
    }

    @Basic
    @Column(name = "c_color", nullable = false, length = 40)
    public String getcColor() {
        return cColor;
    }

    public void setcColor(String cColor) {
        this.cColor = cColor;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        CarEntity carEntity = (CarEntity) o;

        if (cId != carEntity.cId) return false;
        if (cName != null ? !cName.equals(carEntity.cName) : carEntity.cName != null) return false;
        if (cPrice != null ? !cPrice.equals(carEntity.cPrice) : carEntity.cPrice != null) return false;
        if (cType != null ? !cType.equals(carEntity.cType) : carEntity.cType != null) return false;
        if (cBand != null ? !cBand.equals(carEntity.cBand) : carEntity.cBand != null) return false;
        if (cColor != null ? !cColor.equals(carEntity.cColor) : carEntity.cColor != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = cId;
        result = 31 * result + (cName != null ? cName.hashCode() : 0);
        result = 31 * result + (cPrice != null ? cPrice.hashCode() : 0);
        result = 31 * result + (cType != null ? cType.hashCode() : 0);
        result = 31 * result + (cBand != null ? cBand.hashCode() : 0);
        result = 31 * result + (cColor != null ? cColor.hashCode() : 0);
        return result;
    }
}

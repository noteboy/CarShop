package model;

import javax.persistence.*;

/**
 * Created by liuxiaolong on 2017/5/18.
 */
@Entity
@Table(name = "user", schema = "carshop", catalog = "")
public class UserEntity {
    private int uId;
    private String uPassword;
    private String uName;
    private String uEmail;
    private String uTellphone;

    public UserEntity() {
    }

    public UserEntity(String uPassword, String uName) {
        this.uPassword = uPassword;
        this.uName = uName;
    }

    @Id
    @Column(name = "u_id", nullable = false)
    public int getuId() {
        return uId;
    }

    public void setuId(int uId) {
        this.uId = uId;
    }

    @Basic
    @Column(name = "u_password", nullable = false, length = 40)
    public String getuPassword() {
        return uPassword;
    }

    public void setuPassword(String uPassword) {
        this.uPassword = uPassword;
    }

    @Basic
    @Column(name = "u_name", nullable = false, length = 40)
    public String getuName() {
        return uName;
    }

    public void setuName(String uName) {
        this.uName = uName;
    }

    @Basic
    @Column(name = "u_email", nullable = true, length = 40)
    public String getuEmail() {
        return uEmail;
    }

    public void setuEmail(String uEmail) {
        this.uEmail = uEmail;
    }

    @Basic
    @Column(name = "u_tellphone", nullable = true, length = 40)
    public String getuTellphone() {
        return uTellphone;
    }

    public void setuTellphone(String uTellphone) {
        this.uTellphone = uTellphone;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        UserEntity that = (UserEntity) o;

        if (uId != that.uId) return false;
        if (uPassword != null ? !uPassword.equals(that.uPassword) : that.uPassword != null) return false;
        if (uName != null ? !uName.equals(that.uName) : that.uName != null) return false;
        if (uEmail != null ? !uEmail.equals(that.uEmail) : that.uEmail != null) return false;
        if (uTellphone != null ? !uTellphone.equals(that.uTellphone) : that.uTellphone != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = uId;
        result = 31 * result + (uPassword != null ? uPassword.hashCode() : 0);
        result = 31 * result + (uName != null ? uName.hashCode() : 0);
        result = 31 * result + (uEmail != null ? uEmail.hashCode() : 0);
        result = 31 * result + (uTellphone != null ? uTellphone.hashCode() : 0);
        return result;
    }
}

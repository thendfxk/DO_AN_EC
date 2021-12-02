package com.example.do_an_ec.beans;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Date;

public class User {
    private String name, password, sdt, email,cccd,tinh,huyen,gioitinh;
    private LocalDate dob;
    private int permission;

    public User() {

    }

    public User(String name, String password, String sdt, String cccd, String gioitinh, String tinh, String huyen, LocalDate dob, int permission, String email) {
        this.name = name;
        this.password = password;
        this.sdt = sdt;
        this.email = email;
        this.cccd = cccd;
        this.tinh = tinh;
        this.huyen = huyen;
        this.dob = dob;
        this.permission = permission;
        this.gioitinh = gioitinh;
    }

    public String getName() {
        return name;
    }

    public String getPassword() {
        return password;
    }

    public String getSdt() {
        return sdt;
    }

    public String getEmail() {
        return email;
    }

    public String getCccd() {
        return cccd;
    }

    public String getTinh() {
        return tinh;
    }

    public String getHuyen() {
        return huyen;
    }

    public String getGioitinh() {
        return gioitinh;
    }

    public LocalDate getDob() {
        return dob;
    }

    public int getPermission() {
        return permission;
    }
}

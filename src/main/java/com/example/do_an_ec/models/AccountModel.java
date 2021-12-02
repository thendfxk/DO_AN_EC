package com.example.do_an_ec.models;

import com.example.do_an_ec.beans.User;
import org.sql2o.Connection;
import com.example.do_an_ec.utils.DbUtils;

import java.util.List;

public class AccountModel {
        public static void add(User c) {
            String insertSql ="INSERT INTO user (name, dob, cccd, sdt, email, password, gioitinh,tinh, huyen, permission) VALUES (:name,:dob,:cccd,:sdt,:email,:password,:gioitinh, :tinh,:huyen,:permission)\n" ;
            try (Connection con = DbUtils.getConnection()) {
                con.createQuery(insertSql)
                        .addParameter("password", c.getPassword())
                        .addParameter("name", c.getName())
                        .addParameter("email", c.getEmail())
                        .addParameter("dob", c.getDob())
                        .addParameter("permission", c.getPermission())
                        .addParameter("cccd", c.getCccd())
                        .addParameter("gioitinh", c.getGioitinh())
                        .addParameter("sdt", c.getSdt())
                        .addParameter("tinh", c.getTinh())
                        .addParameter("huyen", c.getHuyen())
                        .executeUpdate();
            }
        }
    public static User findBysdt(String sdt) {
         String query = "select * from user where sdt = :sdt";
        try (Connection con = DbUtils.getConnection()) {
            List<User> list = con.createQuery(query)
                    .addParameter("sdt", sdt)
                    .executeAndFetch(User.class);
            if (list.size() == 0) {
                return null;
            }
            return list.get(0);
        }
    }
    public static User checkUser(String sdt, String pw){
         String query = "select * from user where sdt = :sdt and password = :pw";
        try (Connection con = DbUtils.getConnection()) {
            List<User> list = con.createQuery(query)
                    .addParameter("pw", pw)
                    .addParameter("sdt", sdt)
                    .executeAndFetch(User.class);
            if (list.size() == 0) {
                return null;
            }
            return list.get(0);
        }
    }
}

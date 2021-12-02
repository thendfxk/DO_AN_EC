package com.example.do_an_ec.controllers;

import java.io.*;
import java.time.LocalDate;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.example.do_an_ec.beans.User;
import com.example.do_an_ec.models.AccountModel;
import com.example.do_an_ec.utils.*;
//import jdk.internal.org.objectweb.asm.util.Printer;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "Account", value = "/Account/*")
public class Acccount extends HttpServlet {
    private String message;
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException {
        String path = request.getPathInfo();
        switch (path) {
            case "/Register":
                Servletutils.forward("/views/vwAccount/Register.jsp", request, response);
                break;
                case "/Login":
                Servletutils.forward("/views/vwAccount/Login.jsp", request, response);
                break;
                case "/IsAvailable":
                    String sdt = request.getParameter("sdt");
                    User user = AccountModel.findBysdt(sdt);
                    boolean isAvailable = (user == null);

                    PrintWriter out = response.getWriter();
                    response.setContentType("application/json");
                    response.setCharacterEncoding("utf-8");

                    out.print(isAvailable);
                    out.flush();
               break;
        }
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException {
        String path = request.getPathInfo();
        switch (path) {
            case "/Register":
                registerUser(request, response);
                break;
            case "/Login":
                loginUser(request,response);
                break;

        }

    }
    public void registerUser (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        String rawpw = request.getParameter("rawpw");
        String confirmpw = request.getParameter("confirmpw");
//        String strDob = request.getParameter("dob") + " 00:00";
//        DateTimeFormatter df = DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm");
//        LocalDateTime dob = LocalDateTime.parse(strDob, df);
        LocalDate dob = LocalDate.parse(request.getParameter("dob"));
        String gioitinh = request.getParameter("gioitinh");
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String sdt= request.getParameter("sdt");
        boolean check = Boolean.parseBoolean(request.getParameter("checkaccess"));
        String quan= request.getParameter("huyen");
        String thanhpho= request.getParameter("tinh");
        String cccd= request.getParameter("cccd");
        int permission = 0;
        User c = new User(name, rawpw,  sdt,  cccd, gioitinh,  thanhpho,  quan,dob,permission,  email);
        AccountModel.add(c);
    }
    public void loginUser (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        String sdt = request.getParameter("sdt");
        String pw = request.getParameter("pw");
        User user =  AccountModel.checkUser(sdt,pw);
        boolean issAvailable = (user == null);
        if(issAvailable == false){
            Servletutils.forward("/views/vwAccount/Login.jsp", request, response);

        }
        else{
            Servletutils.forward("/views/vwAccount/Register.jsp", request, response);
        }
    }
}
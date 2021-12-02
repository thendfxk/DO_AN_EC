package com.example.do_an_ec.utils;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class Servletutils {
    public static void forward(String url, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher(url);
        rd.forward(request, response);
    }
    public static  void redirect(String url,HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        response.sendRedirect(request.getContextPath() + url);
    }
}

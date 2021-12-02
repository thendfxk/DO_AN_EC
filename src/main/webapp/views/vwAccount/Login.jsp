<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<t:main>
    <jsp:attribute name="css">
        <style>
            <%@include file="../css/Thaiminh.css"%>
        </style>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    </jsp:attribute>
    <jsp:attribute name="js">
        <script>

        </script>
    </jsp:attribute>
    <jsp:body>
        <div class="container-fluid">
            <div class="row">
                <div class="col-8">
                    <div style="text-align: center"><img src="DangNhap.jpg" alt="Slogan">
                    </div></div>
                <div class="col-3">
                    <div class="card text-left">
                        <div class="card mb-3">
                            <div  style="background-color: #07184E;border-radius: 20px">
                                <div class="card-body" >
                                    <div><br/></div>
                                    <div><br/></div>
                                    <div><br/></div>
                                    <div style="text-align: center;color:white;"><h2>Dang Nhap</h2></div>
                                    <div><br/></div>
                                    <div><br/></div>
                                    <form method="post" action="">
                                        <div class="form-group">
                                            <input type="text" class="form-control" name="sdt" id="txtsdt" aria-describedby="helpId" placeholder="Nhập Số điện thoại">
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" name="pw" id="txtpw" aria-describedby="helpId" placeholder="Mật khẩu">
                                        </div>
                                        <div><br/></div>
                                        <div  style="text-align: right"><a href="#">Quên mật khẩu?</a></div>
                                        <div><br/></div>
                                        <div style="text-align: center"><button type="submit" class="btn btn-danger">Đăng nhập</button></div>
                                        <div><br/></div>
                                        <div><a href="#">Bạn chưa có tài khoản? Đăng kí</a></div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </jsp:body>
</t:main>
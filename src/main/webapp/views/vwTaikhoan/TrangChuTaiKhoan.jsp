<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<t:main>
    <jsp:attribute name="css">
        <style>
            <%@include file="../css/BaoPhuc.css"%>
        </style>
    </jsp:attribute>
    <jsp:attribute name="js">
        <script>

        </script>
    </jsp:attribute>
    <jsp:body>
        <div>
            <form id="sdt">
                <div class="sdt-ip">Thông tin tài khoản</div>
                <div class="info-acc">
                    <div class="info-acc-header">
                        <ul>
                            <li>Họ và Tên: <span> Nguyễn Mai Hoàng</span></li>
                            <li>Số Tài khoản: <span>1911xxxxxxx</span></li>
                        </ul>
                    </div>
                    <div class="info-money">
                        <div>Tiền trong tài khoản</div>
                        <div>
                            <input name="Sotien" readonly value="1 vnd">
                        </div>
                        <div class="info-money-date"> Hạn sử dụng </div>
                        <button type="submit" >
                            <i class="fa fa-check" aria-hidden="true"></i>Rút tiền
                        </button>
                    </div>
                    <div class="info-acc-list">
                        <div>
                            <div class="info-acc-list-div-header-1"><i class="fas fa-money-check-alt"></i></div>
                            <div class="info-acc-list-div">Rút tiền</div>
                        </div>
                        <div>
                            <div class="info-acc-list-div-header"><i class="fas fa-info"></i></div>
                            <div class="info-acc-list-div">Thông tin tài khoản</div>
                        </div>
                        <div >
                            <div class="info-acc-list-div-header-2"><i class="fas fa-history"></i></div>
                            <div class="info-acc-list-div">Lịch sử giao dịch</div>
                        </div>
                        <div>
                            <div class="info-acc-list-div-header-2"><a href="#"><i class="fas fa-money-check-alt"></i></a></div>
                            <div class="info-acc-list-div">Thông tin lãi suất</div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </jsp:body>
</t:main>
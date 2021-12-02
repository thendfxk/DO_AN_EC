<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<head>
    <style>
        <%@include file="/views/css/MaiHoang.css"%>
    </style>
</head>

<body>
<div id="header">
    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPolE5yEUdYksRnOowCZp591iyIFyzudqvPA&usqp=CAU" width="100px" height="84px">
    <div><table>
        <tr >
            <td rowspan="2"><i class=" fa fa-phone" aria-hidden="true"></i></td>
            <td>Dịch vụ khách hàng 24/7</td>
        </tr>
        <tr>
            <td>19001069</td>
        </tr>
    </table>
    </div>
    <ul>
        <li>Tiết kiệm</li><i class="fa fa-piggy-bank" aria-hidden="true"></i>
        <li>Giới Thiệu </li> <i class="fa fa-phone "aria-hidden="true"></i>
        <c:choose>
            <c:when test="true">
                <li>Đăng Nhập</li><i class=" fa fa-user" aria-hidden="true"></i>
            </c:when>
        </c:choose>

    </ul>
</div>
</body>

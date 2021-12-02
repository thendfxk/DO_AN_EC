<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<t:main>
  <jsp:attribute name="css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-datetimepicker/2.5.20/jquery.datetimepicker.min.css" integrity="sha512-f0tzWhCwVFS3WeYaofoLWkTP62ObhewQ1EZn65oSYDZUg1+CyywGKkWzm8BxaJj5HGKI72PnMH9jYyIFz+GH7g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
   <style>
     <%@include file="/views/css/MaiHoang.css"%>
   </style>
  </jsp:attribute>
  <jsp:body>
    <div class="nhapma">
      <ul style="color: white ;font-size: 25px;padding-top: 20px;">Nhập mã</ul>
      <ul class="xanhnhat">
        <p style="font-size: 24px; margin: 0%;" >
          Thông báo
        </p>
        <p>
          Chúng tôi đã gửi một mã số đến địa chỉ email của bạn, vui lòng kiểm tra để lấy mã số, xin cảm ơn
        </p>
      </ul>
      <form>
        <ul>
          <input type="text">
        </ul>
        <ul>
          <div class="auth-form__controls">
            <button type="submit" class="btn">Gửi</button>
          </div>
        </ul>
      </form>
    </div>
  </jsp:body>
</t:main>
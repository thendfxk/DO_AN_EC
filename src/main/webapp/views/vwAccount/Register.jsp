<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<t:main>
    <jsp:attribute name="css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-datetimepicker/2.5.20/jquery.datetimepicker.min.css" integrity="sha512-f0tzWhCwVFS3WeYaofoLWkTP62ObhewQ1EZn65oSYDZUg1+CyywGKkWzm8BxaJj5HGKI72PnMH9jYyIFz+GH7g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
      <%@include file="../css/MaiHoang.css"%>
    </style>
    </jsp:attribute>
    <jsp:attribute name="js">
      <script>
        $('#frmRegister').on('submit', function (e) {
          e.preventDefault();
          const name = $('#txtName').val();
          const rawpw =$('#rawpw').val();
          const cfpw =$('#confirmpw').val();
          const cccd = $('#txtCCCD').val();
          const dob =$('#txtDOB').val();
          const gt =$('#txtGT').val();
          const tinh = $('#txtTinh').val();
          const tp =$('#txtTP').val();
          const sdt =$('#txtSDT').val();
          var checkbox = document.getElementById('txtCheck');
          if (name.length === 0||rawpw.length ===0 || cfpw.length===0 || cccd.length ===0 || dob.length===0  || gt.length ===0 ||tinh.length === 0|| tp.length === 0||sdt.length ===0) {
            alert('Inv  avalible username.');
            return;
          }
          if(rawpw != cfpw){
            alert('Mật khẩu xác nhận chưa đúng');
            return;
          }
          if(checkbox.checked === false){
            alert('Tích checkbox hộ tui cái');
            return;
          }
          $.getJSON('${pageContext.request.contextPath}/Account/IsAvailable?sdt=' + sdt, function (data){
            if(data === true){
              $('#frmRegister').off('submit').submit();
            }
            else {
              alert('Số điện thoại này đã được đăng kí');
            }
          });
        });
      </script>
    </jsp:attribute>
    <jsp:body>
      <div class="body">
        <div class="name">Đăng ký tài khoản - Bước 1</div>
        <form id="frmRegister" action="" method="post" >
          <div class="chinhsuathongtincanhan">
            <h3 class="tieude">Thông tin cơ bản </h3>
            <ul class="thongtin">
              <li class="mh ">Họ và tên</li>
              <li class="mh tt"> <input type="text" id="txtName" name="name"></li>
            </ul>
            <ul class="thongtin">
              <li class="mh">Ngày tháng năm sinh</li>
              <li class="mh tt"> <input type="date" name="dob" id="txtDOB"></li>
            </ul>
            <ul class="thongtin">
              <li class="mh">Giới tính</li>
              <li class="mh tt">
                <input name="gioitinh" type="text" list="gt" id="txtGT" >
                <datalist id="gt">
                  <option value="Nam">
                  <option value="Nữ">
                </datalist>
              </li>
            </ul>
            <ul class="thongtin">
              <li class="mh" >Số CCCD</li>
              <li class="mh tt"> <input type="text" name="cccd" id="txtCCCD"></li>
            </ul>
            <ul class="thongtin">
              <li class="mh" >ĐTDD</li>
              <li class="mh tt"> <input type="text" name="sdt" id="txtSDT"></li>
            </ul>
            <ul class="thongtin">
              <li class="mh">Email đã đăng ký Paypal</li>
              <li class="mh tt"> <input type="email" name="email" id="txtEmail" ></li>
            </ul>
            <ul class="thongtin">
              <li class="mh">Mật Khẩu</li>
              <li class="mh tt"> <input type="password" name="rawpw" id="rawpw"></li>
            </ul>
            <ul class="thongtin">
              <li class="mh">Nhập lại mật khẩu</li>
              <li class="mh tt"> <input type="password" name="confirmpw" id="confirmpw" ></li>
            </ul>
            <ul class="thongtin">
              <li class="mh">Tỉnh/ Thành phố</li>
              <li class="mh tt"> <input type="text" name="tinh" id="txtTinh" ></li>
            </ul>
            <ul class="thongtin">
              <li class="mh">Quận huyện</li>
              <li class="mh tt"> <input type="text" name="huyen" id="txtTP"></li>
            </ul>
            </ul>
            <ul class="thongtin dongydieukhoan">
              <input type="checkbox" value="1" name="checkaccess" id="txtCheck">Tôi đồng ý cung cấp thông tin và cho phép KPMH sử dụng thông tin theo các quy định tại Chính sách bảo mật thông tin
            </ul>
            <div class="auth-form__controls">
              <button  type="submit" class="btn" >Tiếp tục</button>
            </div>
          </div>
        </form>
      </div>
    </div>
    </jsp:body>
</t:main>

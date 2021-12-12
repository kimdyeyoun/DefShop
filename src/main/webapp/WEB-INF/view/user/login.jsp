<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="/res/css/login.css?ver=4">
<div class="wrap">
    <div class="login">
        <h2>Log-in</h2>
        <div class="login_sns">
            <li><a href=""><i class="fab fa-instagram"></i>n</a></li>
            <li><a href=""><i class="fab fa-twitter"></i>k</a></li>
        </div>
        <form action="/user/login" method="post">
            <div>
                <div class="login_id">
                    <h4>아이디</h4>
                    <input type="text" name="uid" placeholder="아이디" required>
                </div>
                <div class="login_pw">
                    <h4>비밀번호</h4>
                    <input type="password" name="upw" placeholder="비밀번호" required>
                </div>
            </div>
            <div class="loginerr">
                <c:if test="${sessionScope.loginUser == null}">
                    ${requestScope.loginerrmsg}
                </c:if>
            </div>
            <div class="login_etc">
                <div class="checkbox">
                    <input type="checkbox" name=""> 아이디 기억하기
                </div>
                <div class="forgot_pw">
                    <span>아이디/</span> <span>비밀번호</span>
                </div>
            </div>
            <div class="submit">
                <input type="submit" value="로그인">
            </div>
        </form>
    </div>
</div>



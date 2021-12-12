<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="/res/css/login.css?ver=3">
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
                    <span class="forgot_id">아이디/</span>
                    <span class="forgot_pw1">비밀번호</span>
                </div>
            </div>
            <div class="submit">
                <input type="submit" value="로그인">
            </div>
        </form>
    </div>
</div>

<div id="whereId" class="modal">
    <div id="noneAndblock">
        <div class="center"> <input type="text" name="nm" placeholder="이름" required></div>
        <div class="center"> <input type="text" name="phone" placeholder="번호" required></div>
        <div class="center">
            <span class="save"><input type="submit" value="확인"></span>
            <span class="close"><input type="button" value="닫기"></span>
        </div>
    </div>
    <div id="complet" class="complet">아이디는 gusals9355 입니다.</div>
</div>



<p><a class="btn" href="#ex7">Open Modal22222222</a></p>


<div id="ex7" class="modal">
    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
        tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
        quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
        consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
        cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
        proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
</div>

<script src="/res/js/login.js?ver=2"></script>
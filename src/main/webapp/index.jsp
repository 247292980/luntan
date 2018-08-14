<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false"
         pageEncoding="UTF-8" %>
<html>
<head>
    <%@ include file="basepage.jsp" %>
    <title>论坛首页</title>
</head>
<body>
<form action="" method="post" class="center-block">
    <table style="margin: auto;">
        <tr>
            <td><img src="pic/logo.jpg" class="img-responsive img-circle "
                     alt="Responsive image"/></td>
        </tr>
        <tr>
            <td>
                <button class="btn btn-primary btn-lg center-block" type="submit"
                        style="width: 200px; margin-top: 10px"
                        formaction="<%=basePath%>/page_userLogin">登录
                </button>
            </td>
        </tr>
        <tr>
            <!--formaction="http://localhost:8080/asdasd/login.do?op=toRegister"-->
            <td>
                <button class="btn btn-primary btn-lg center-block" type="submit"
                        style="width: 200px; margin-top: 10px"
                        formaction="<%=basePath%>/page_userRegister">注册
                </button>
            </td>
        </tr>
    </table>
</form>
</body>
</html>
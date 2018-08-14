<%--
  Created by IntelliJ IDEA.
  User: liangguiping
  Date: 2017/8/16
  Time: 9:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false"
         pageEncoding="UTF-8" %>
<html>
<head>
    <%@ include file="basepage.jsp" %>
    <title>用户设置</title>
</head>
<body>
<form action="" method="post" class="form-horizontal ">
    <%--margin和margin top 分前后覆盖的--%>
    <table style="margin: auto; margin-top: 5%; border-spacing: 0px 10px;width: 300px">
        <tr>
            <td colspan="2">
                <span style="font-size:x-large;color: #2aabd2">用户设置</span>
            </td>
        </tr>

        <tr>
            <td colspan="2">
                <button class="btn btn-primary btn-lg btn-block" type="submit"
                        style="margin-top: 10px"
                        formaction="<%=basePath%>/page_userRewritePassword">修改密码
                </button>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <button class="btn btn-primary btn-lg btn-block" type="submit"
                        style="margin-top: 10px"
                        formaction="<%=basePath%>/page_userSetHead">设置头像
                </button>
            </td>
        </tr>
    </table>
</form>
</body>
</html>

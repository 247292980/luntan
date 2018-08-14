<%--
  Created by IntelliJ IDEA.
  User: liangguiping
  Date: 2017/8/17
  Time: 15:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path;
%>
<%--<%--%>
    <%--Object message = request.getAttribute("message");--%>
    <%--if (message != null && !"".equals(message)) {--%>
        <%--out.println("<SCRIPT LANGUAGE='JavaScript'>");--%>
        <%--out.println("alert('"+message+"')");--%>
        <%--out.println("</SCRIPT>");--%>
    <%--}--%>
<%--%>--%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">

<!--可选的Bootstrap主题文件（一般不用引入） -->
<!--<link rel="stylesheet" href="bootstrap/css/bootstrap-theme.min.css">-->
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="js/jquery-3.1.1.min.js"></script>
<%--jquery浏览器兼容插件--%>
<script src="js/jquery.browser.min.js"></script>
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="bootstrap/js/bootstrap.min.js"></script>
<%--QQ表情插件jquery.qqFace.js--%>
<script src="js/jquery.qqFace.js"></script>
<!-- -fileinput.js核心 CSS 文件导入 -->
<link type="text/css" rel="stylesheet" href="bootstrap/css/fileinput.css" />
<!-- -fileinput.js核心 JavaScript 文件导入 -->
<script type="text/javascript" src="bootstrap/js/fileinput.js"></script>
<!-- -fileinput.js核心 JavaScript 翻译文件导入 -->
<script type="text/javascript" src="bootstrap/js/fileinput_locale_zh.js"></script>
<script type="text/javascript" src="bootstrap/js/zh.js"></script>
<%--emotion的基本js配置--%>
<style>
    span.emotion { width: 42px; height: 20px; padding-left: 20px; cursor: pointer }
    span.emotion:hover { background-position: 2px -28px }

    .qqFace { margin-top: 4px; background: #fff; padding: 2px; border: 1px #dfe6f6 solid; }
    .qqFace table td { padding: 0px; }
    .qqFace table td img { cursor: pointer; border: 1px #fff solid; }
    .qqFace table td img:hover { border: 1px #0066cc solid; }
    .word table td {}
</style>
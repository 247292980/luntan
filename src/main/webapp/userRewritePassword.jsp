<%--
  Created by IntelliJ IDEA.
  User: liangguiping
  Date: 2017/8/16
  Time: 9:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false"
         pageEncoding="UTF-8" %>
<html>
<head>
    <%@ include file="basepage.jsp" %>
    <title>修改密码</title>
    <style>
        li{list-style-type:none;}
        .head-container{heigth:40px;background-color:#3b5998;font-family: "inherit";
            margin-bottom: 30px;}
        .global-width{width: 950px;margin:0 auto;}
        .head-left-text>a{margin-right:630px;font-size:28px;padding-top: 3px;
            color:#ffffff;text-decoration:none;}
        .head-right-text>a{font-size: 15px;color:#ffffff;
            margin-left: 40px;line-height: 40px;}

        .inline-block{display: inline-block;}
        .content-container{margin:85px 0 100px;}
        .input-group-addon{border-right:none;}
        .input-group{margin:30px 0;}
        .input-group>input{height:41px;position: relative;top:1px;}

        #foot-container{
            margin-top:50px;
            height:160px;
            border-top: #dddfe2 1px solid;
            font-size:15px;
            padding-top: 15px;color:#737373;
        }
        #foot-left-div{}
        #foot-right-div{float:right;}
        #foot-right-div>span{margin-left: 10px;}
        #foot-right-div>span>a{color:#5e5e5e;}
    </style>
</head>
<body>
<div class="head-container">
    <ul class="global-width" style="padding-left: 0;">
        <li class="head-left-text inline-block"><a href="<%=basePath%>/roomMain_show"><b>Luntan</b></a></li>
        <li class="head-right-text inline-block"><a href="<%=basePath%>/page_roomWrite">添加文章</a></li>
        <li class="head-right-text inline-block"><a href="<%=basePath%>/page_userInfo">个人空间</a></li>
        <%--没写--%><%--没写--%><%--没写--%><%--没写--%><%--没写--%>
        <%--没写--%><%--没写--%><%--没写--%><%--没写--%><%--没写--%>
    </ul>
</div>
<div class="content-container">
    <form action="" method="post" class="form-horizontal ">
        <%--margin和margin top 分前后覆盖的--%>
        <div class="global-width" style="width: 30%;">

            <div class="input-group">
						<span class="input-group-addon glyphicon glyphicon-eye-open"
                              id="basic-addon1"></span>
                <input type="password" name="password" required
                       class="form-control" placeholder="必填#请输入当前用户密码"
                       aria-describedby="basic-addon1">
            </div>
            <div class="input-group">
						<span class="input-group-addon glyphicon glyphicon-eye-open"
                              id="basic-addon2"></span>
                <input type="password" name="newPassword" required
                       class="form-control" placeholder="必填#请输入新的用户密码"
                       aria-describedby="basic-addon2">
            </div>

            <div class="input-group">
						<span class="input-group-addon glyphicon glyphicon-eye-open"
                              id="basic-addon3"></span>
                <input type="password" name="tempPassword" required
                       class="form-control" placeholder="必填#重复输入新的用户密码"
                       aria-describedby="basic-addon3">
            </div>


            <button class="btn btn-primary btn-lg btn-block" type="submit"
                    style="margin-top: 10px" formaction="<%=basePath%>/user_rewritePassword">完成
            </button>
        </div>
    </form>
</div>
<div id="foot-container" class="global-width">
    <div id="foot-left-div" class="inline-block">
        <span>Luntan © 2017</span>
    </div >
    <div id="foot-right-div" class="inline-block">
        <span><a href="roomMain_show">社区管理</a></span>
        <span>
            <a href="roomMain_show2" >文章管理</a>
        </span>
        <%--<span>--%>
            <%--<a href="#" >关于我们</a>--%>
        <%--</span>--%>
        <%--<span>--%>
            <%--<a href="#" >联系我们</a>--%>
        <%--</span>--%>
    </div>


<%--</div>--%>
<%--<form action="" method="post" class="form-horizontal ">--%>
    <%--&lt;%&ndash;margin和margin top 分前后覆盖的&ndash;%&gt;--%>
    <%--<table style="margin: auto; margin-top: 5%; border-spacing: 0px 10px;width: 300px">--%>
        <%--<tr>--%>
            <%--<td colspan="">--%>
                <%--<span style="font-size:x-large;color: #2aabd2">修改密码</span>--%>
            <%--</td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td colspan="">--%>
                <%--<div class="input-group">--%>
						<%--<span class="input-group-addon glyphicon glyphicon-eye-open"--%>
                              <%--id="basic-addon1"></span>--%>
                    <%--<input type="password" name="password" required--%>
                           <%--class="form-control" placeholder="必填#请输入当前用户密码"--%>
                           <%--aria-describedby="basic-addon1">--%>
                <%--</div>--%>
            <%--</td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td colspan="">--%>
                <%--<div class="input-group">--%>
						<%--<span class="input-group-addon glyphicon glyphicon-eye-open"--%>
                              <%--id="basic-addon2"></span>--%>
                    <%--<input type="password" name="newPassword" required--%>
                           <%--class="form-control" placeholder="必填#请输入新的用户密码"--%>
                           <%--aria-describedby="basic-addon2">--%>
                <%--</div>--%>
            <%--</td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td colspan="">--%>
                <%--<div class="input-group">--%>
						<%--<span class="input-group-addon glyphicon glyphicon-eye-open"--%>
                              <%--id="basic-addon3"></span>--%>
                    <%--<input type="password" name="tempPassword" required--%>
                           <%--class="form-control" placeholder="必填#重复输入新的用户密码"--%>
                           <%--aria-describedby="basic-addon3">--%>
                <%--</div>--%>
            <%--</td>--%>
        <%--</tr>--%>

        <%--<tr>--%>
            <%--<td colspan="">--%>
                <%--<button class="btn btn-primary btn-lg btn-block" type="submit"--%>
                        <%--style="margin-top: 10px" formaction="<%=basePath%>/user_rewritePassword">完成--%>
                <%--</button>--%>
            <%--</td>--%>
        <%--</tr>--%>
    <%--</table>--%>
<%--</form>--%>
</body>
</html>

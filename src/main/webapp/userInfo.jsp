<%--
  Created by IntelliJ IDEA.
  User: LGP
  Date: 2017/7/12
  Time: 23:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false"
         pageEncoding="UTF-8" %>
<html>
<head>
    <%@ include file="basepage.jsp" %>
    <title>个人信息</title>
    <style>
        li{list-style-type:none;}
        .inline-block{display: inline-block;}
        .head-container{heigth:40px;background-color:#3b5998;font-family: "inherit";
            margin-bottom: 30px;}
        .global-width{width: 950px;margin:0 auto;}
        .head-left-text>a{margin-right:630px;font-size:28px;padding-top: 3px;
            color:#ffffff;text-decoration:none;}
        .head-right-text>a{font-size: 15px;color:#ffffff;
            margin-left: 40px;line-height: 40px;}
        .content-container{margin:85px 0 100px;}
        .input-group-addon{border-right: none;}
        .input-group{margin-top:30px;}
        .input-group>input{height:41px;position: relative;top: 1px;}
        .btn-group{margin:20px 0 18px;}
        .more-div{margin-top:10px;}
        .more-div>a{color:#8c8c8c;}
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
    <script type="text/javascript">
        <%--设置男女的默认选中--%>
        $(document).ready(function () {
            $("#man").css("background-color", "${userEntity.sex=='男'?'#ccc':'#fff'}");
            $("#woman").css("background-color", "${userEntity.sex=='女'?'#ccc':'#fff'}");
        });
    </script>
</head>
<body>
<div class="head-container">
    <ul class="global-width" style="padding-left: 0;">
        <li class="head-left-text inline-block"><a href="<%=basePath%>/roomMain_show"><b>Luntan</b></a></li>
        <li class="head-right-text inline-block"><a href="<%=basePath%>/roomMain_show2">文章管理</a></li>
        <li class="head-right-text inline-block"><a href="<%=basePath%>/page_roomWrite">添加文章</a></li>
        <%--<li class="head-right-text inline-block"><a href="<%=basePath%>/page_userInfo">我的资料</a></li>--%>
        <%--没写--%><%--没写--%><%--没写--%><%--没写--%><%--没写--%>
        <%--没写--%><%--没写--%><%--没写--%><%--没写--%><%--没写--%>
    </ul>
</div>

<div class="content-container">
    <form action="" method="post" class="form-horizontal global-width">
        <%--margin和margin top 分前后覆盖的--%>
        <div class="global-width" style="width: 30%;">
            <div class="input-group">
                <span class="input-group-addon glyphicon glyphicon-user" id="basic-addon1"></span>
                <input type="text" name="username" disabled="true"
                       class="form-control" value="${userEntity.username}"
                       aria-describedby="basic-addon1">
            </div>
            <div class="input-group">
						<span class="input-group-addon glyphicon glyphicon-phone-alt"
                              id="basic-addon2"></span>
                <input type="text" id="mobile" disabled="true"
                       name="mobile" class="form-control" value="${userEntity.mobile}"
                       aria-describedby="basic-addon2">
            </div>
            <div class="input-group">
						<span class="input-group-addon glyphicon glyphicon-home"
                              id="basic-addon3"></span>
                <input type="text" id="address" disabled="true"
                       name="address" class="form-control" value="${userEntity.address}"
                       aria-describedby="basic-addon3">
            </div>
            <div class="text-center">
                <div class="btn-group"
                     data-toggle="buttons">
                    <label disabled="true" class="btn btn-default"
                           style="width: 50px;margin-right:110px;" id="man">
                        <input type="radio" name="sex" value="男">男
                    </label>
                    <label disabled="true" class="btn btn-default"
                           style="width: 50px" id="woman">
                        <input type="radio" name="sex" value="女"> 女
                    </label>
                </div>
            </div>
            <button class="btn btn-primary btn-block" type="submit"
                    formaction="<%=basePath%>/page_userRewriteInfo">修改信息
            </button>
            <div class="more-div">
                <a type="submit" href="<%=basePath%>/page_index" style="margin-right:160px;">返回登录</a>
                <a type="submit" href="<%=basePath%>/page_userRewritePassword">修改密码</a>
            </div>
        </div>
    </form>
</div>

<div id="foot-container" class="global-width">
    <div id="foot-left-div" class="inline-block">
        <span>Luntan © 2017</span>
    </div >
    <div id="foot-right-div" class="inline-block">
        <span><a href="<%=basePath%>/roomMain_show">社区管理</a></span>
        <span><a href="<%=basePath%>/roomMain_show2">文章管理</a></span>
        <%--<span>--%>
            <%--<a href="#" >发现</a>--%>
        <%--</span>--%>
        <%--<span>--%>
            <%--<a href="#" >关于我们</a>--%>
        <%--</span>--%>
        <%--<span>--%>
            <%--<a href="#" >联系我们</a>--%>
        <%--</span>--%>
    </div>
</div>


<%--<form action="" method="post" class="form-horizontal ">--%>
    <%--&lt;%&ndash;margin和margin top 分前后覆盖的&ndash;%&gt;--%>
    <%--<table style="margin: auto; margin-top: 5%; border-spacing: 0px 10px;">--%>
        <%--<tr>--%>
            <%--<td colspan="2">--%>
                <%--<span style="font-size:x-large;color: #2aabd2">用户详细信息</span>--%>
            <%--</td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td colspan="2">--%>
                <%--<div class="input-group">--%>
						<%--<span class="input-group-addon glyphicon glyphicon-user"--%>
                              <%--id="basic-addon1"></span>--%>
                    <%--<input type="text" name="username" disabled="true"--%>
                           <%--class="form-control" value="${userEntity.username}"--%>
                           <%--aria-describedby="basic-addon1">--%>
                <%--</div>--%>
            <%--</td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td colspan="2">--%>
                <%--<div class="input-group">--%>
						<%--<span class="input-group-addon glyphicon glyphicon-phone-alt"--%>
                              <%--id="basic-addon2"></span>--%>
                    <%--<input type="text" id="mobile" disabled="true"--%>
                           <%--name="mobile" class="form-control" value="${userEntity.mobile}"--%>
                           <%--aria-describedby="basic-addon2">--%>
                <%--</div>--%>
            <%--</td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td colspan="2">--%>
                <%--<div class="input-group">--%>
						<%--<span class="input-group-addon glyphicon glyphicon-home"--%>
                              <%--id="basic-addon3"></span>--%>
                    <%--<input type="text" id="address" disabled="true"--%>
                           <%--name="address" class="form-control" value="${userEntity.address}"--%>
                           <%--aria-describedby="basic-addon3">--%>
                <%--</div>--%>
            <%--</td>--%>
        <%--</tr>--%>
        <%--<script type="text/javascript">--%>
            <%--&lt;%&ndash;设置男女的默认选中&ndash;%&gt;--%>
            <%--$(document).ready(function () {--%>
                <%--$("#man").css("background-color", "${userEntity.sex=='男'?'#ccc':'#fff'}");--%>
                <%--$("#woman").css("background-color", "${userEntity.sex=='女'?'#ccc':'#fff'}");--%>
            <%--});--%>
        <%--</script>--%>
        <%--<tr>--%>
            <%--<td colspan="2">--%>
                <%--<div class="btn-group" style="margin-top: 10px"--%>
                     <%--data-toggle="buttons">--%>
                    <%--<label disabled="true" class="btn btn-default"--%>
                           <%--style="width: 150px" id="man">--%>
                        <%--<input type="radio" name="sex" value="男">男--%>
                    <%--</label>--%>
                    <%--<label disabled="true" class="btn btn-default"--%>
                           <%--style="width: 150px" id="woman">--%>
                        <%--<input type="radio" name="sex" value="女"> 女--%>
                    <%--</label>--%>
                <%--</div>--%>
            <%--</td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td colspan="2">--%>
                <%--<button class="btn btn-primary btn-lg btn-block" type="submit"--%>
                        <%--style="margin-top: 10px"--%>
                        <%--formaction="<%=basePath%>/page_userRewriteInfo">修改个人信息--%>
                <%--</button>--%>
            <%--</td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td colspan="2">--%>
                <%--<button class="btn btn-primary btn-lg btn-block" type="submit"--%>
                        <%--style="margin-top: 10px"--%>
                        <%--formaction="<%=basePath%>/page_index">返回登录界面--%>
                <%--</button>--%>
            <%--</td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td colspan="2">--%>
                <%--<button class="btn btn-primary btn-lg btn-block" type="submit"--%>
                        <%--style="margin-top: 10px"--%>
                        <%--formaction="<%=basePath%>/page_userSetting">更多设置--%>
                <%--</button>--%>
            <%--</td>--%>
        <%--</tr>--%>
    <%--</table>--%>
<%--</form>--%>
</body>
</html>

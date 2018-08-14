<%--<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false"--%>
         <%--pageEncoding="UTF-8" %>--%>
<%--<html>--%>
<%--<head>--%>
    <%--<%@ include file="basepage.jsp" %>--%>
    <%--<title>论坛登录</title>--%>
    <%--<style>--%>
        <%--body{background-color:#f5f5f5;}--%>
        <%--li{list-style-type:none;}--%>
        <%--.inline-block{display: inline-block;}--%>
        <%--.head-container{heigth:40px;background-color:#3b5998;font-family: "inherit";--%>
            <%--margin-bottom: 30px;}--%>
        <%--.global-width{width: 950px;margin:0 auto;}--%>
        <%--.head-left-text>a{margin-right:630px;font-size:28px;padding-top: 3px;--%>
            <%--color:#ffffff;text-decoration:none;}--%>
        <%--.head-right-text>a{font-size: 15px;color:#ffffff;--%>
            <%--margin-left: 40px;line-height: 40px;}--%>
        <%--.content-container{margin:85px 0 100px;}--%>
        <%--.form-signin {--%>
            <%--max-width: 300px;--%>
            <%--padding: 19px 29px 29px;--%>
            <%--margin: 0 auto 20px;--%>
            <%--background-color: #fff;--%>
            <%--border: 1px solid #e5e5e5;--%>
            <%---webkit-border-radius: 5px;--%>
            <%---moz-border-radius: 5px;--%>
            <%--border-radius: 5px;--%>
            <%---webkit-box-shadow: 0 1px 2px rgba(0,0,0,.05);--%>
            <%---moz-box-shadow: 0 1px 2px rgba(0,0,0,.05);--%>
            <%--box-shadow: 0 1px 2px rgba(0,0,0,.05);--%>
        <%--}--%>
        <%--.form-signin .form-signin-heading,--%>
        <%--.form-signin .checkbox {--%>
            <%--margin-bottom: 10px;--%>
        <%--}--%>
        <%--.form-signin-heading{color:#9b9b9b;}--%>
        <%--.form-signin input[type="text"],--%>
        <%--.form-signin input[type="password"] {--%>
            <%--font-size: 16px;--%>
            <%--height: auto;--%>
            <%--margin-bottom: 15px;--%>
            <%--padding: 7px 9px;--%>
        <%--}--%>
        <%--.register-span>a{color:#8c8c8c;margin-left: 100px;}--%>

        <%--#foot-container{--%>
            <%--margin-top:50px;--%>
            <%--height:160px;--%>
            <%--border-top: #dddfe2 1px solid;--%>
            <%--font-size:15px;--%>
            <%--padding-top: 15px;color:#737373;--%>
        <%--}--%>
        <%--#foot-left-div{}--%>
        <%--#foot-right-div{float:right;}--%>
        <%--#foot-right-div>span{margin-left: 10px;}--%>
        <%--#foot-right-div>span>a{color:#5e5e5e;}--%>
    <%--</style>--%>
<%--</head>--%>
<%--<body>--%>
<%--<div class="head-container">--%>
    <%--<ul class="global-width" style="padding-left: 0;">--%>
        <%--<li class="head-left-text inline-block"><a href="<%=basePath%>/index.jsp"><b>Luntan</b></a></li>--%>
        <%--&lt;%&ndash;没写&ndash;%&gt;&lt;%&ndash;没写&ndash;%&gt;&lt;%&ndash;没写&ndash;%&gt;&lt;%&ndash;没写&ndash;%&gt;&lt;%&ndash;没写&ndash;%&gt;--%>
        <%--&lt;%&ndash;没写&ndash;%&gt;&lt;%&ndash;没写&ndash;%&gt;&lt;%&ndash;没写&ndash;%&gt;&lt;%&ndash;没写&ndash;%&gt;&lt;%&ndash;没写&ndash;%&gt;--%>
    <%--</ul>--%>
<%--</div>--%>
<%--<div class="content-container">--%>
    <%--<form class="form-signin">--%>
        <%--<h2 class="form-signin-heading">登陆</h2>--%>
        <%--<input type="text" class="input-block-level" name="username" placeholder="请输入用户名称">--%>
        <%--<input type="password" name="password" class="input-block-level" placeholder="请输入密码">--%>

        <%--<button class="btn btn-large btn-primary" type="submit" formaction="<%=basePath%>/user_login">登陆</button>--%>
        <%--<span class="register-span"><a href="<%=basePath%>/page_userRegister">注册账号</a></span>--%>
        <%--&lt;%&ndash;<table width="100%" style="margin-top:8px;"><tr>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<td><button class="btn btn-mini btn-default" type="submit" formaction="">QQ</button></td>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<td><button class="btn btn-mini btn-default" type="submit" formaction="">微信</button></td>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<td><button class="btn btn-mini btn-default" type="submit" formaction="">微博</button></td>&ndash;%&gt;--%>
        <%--&lt;%&ndash;</tr></table>&ndash;%&gt;--%>
    <%--</form>--%>
<%--</div>--%>
<%--<div id="foot-container" class="global-width">--%>
    <%--<div id="foot-left-div" class="inline-block">--%>
        <%--<span>Luntan © 2017</span>--%>
    <%--</div >--%>
    <%--&lt;%&ndash;<div id="foot-right-div" class="inline-block">&ndash;%&gt;--%>
        <%--&lt;%&ndash;<span><a href="#">社区</a></span>&ndash;%&gt;--%>
        <%--&lt;%&ndash;<span>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<a href="#" >发现</a>&ndash;%&gt;--%>
        <%--&lt;%&ndash;</span>&ndash;%&gt;--%>
        <%--&lt;%&ndash;<span>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<a href="#" >关于我们</a>&ndash;%&gt;--%>
        <%--&lt;%&ndash;</span>&ndash;%&gt;--%>
        <%--&lt;%&ndash;<span>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<a href="#" >联系我们</a>&ndash;%&gt;--%>
        <%--&lt;%&ndash;</span>&ndash;%&gt;--%>
    <%--&lt;%&ndash;</div>&ndash;%&gt;--%>


<%--</div>--%>
<%--&lt;%&ndash;<form action="" method="post">&ndash;%&gt;--%>
    <%--&lt;%&ndash;<table&ndash;%&gt;--%>
            <%--&lt;%&ndash;style="margin: auto; margin-top: 10%; border-collapse: separate">&ndash;%&gt;--%>
        <%--&lt;%&ndash;<tr>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<td colspan="2">&ndash;%&gt;--%>
                <%--&lt;%&ndash;<div class="input-group"&ndash;%&gt;--%>
                     <%--&lt;%&ndash;style="margin-top: 10px">&ndash;%&gt;--%>
						<%--&lt;%&ndash;<span class="input-group-addon glyphicon glyphicon glyphicon-user "&ndash;%&gt;--%>
                              <%--&lt;%&ndash;id="basic-addon1"></span> <input type="text" name="username"&ndash;%&gt;--%>
                                                               <%--&lt;%&ndash;class="form-control" placeholder="请输入用户名"&ndash;%&gt;--%>
                                                               <%--&lt;%&ndash;aria-describedby="basic-addon1">&ndash;%&gt;--%>
                <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
            <%--&lt;%&ndash;</td>&ndash;%&gt;--%>
        <%--&lt;%&ndash;</tr>&ndash;%&gt;--%>
        <%--&lt;%&ndash;<tr>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<td colspan="2">&ndash;%&gt;--%>
                <%--&lt;%&ndash;<div class="input-group"&ndash;%&gt;--%>
                     <%--&lt;%&ndash;style="margin-top: 10px">&ndash;%&gt;--%>
						<%--&lt;%&ndash;<span class="input-group-addon glyphicon glyphicon-eye-open"&ndash;%&gt;--%>
                              <%--&lt;%&ndash;id="basic-addon2"></span> <input type="password" name="password"&ndash;%&gt;--%>
                                                               <%--&lt;%&ndash;class="form-control" placeholder="请输入用户密码"&ndash;%&gt;--%>
                                                               <%--&lt;%&ndash;aria-describedby="basic-addon2">&ndash;%&gt;--%>
                <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
            <%--&lt;%&ndash;</td>&ndash;%&gt;--%>
        <%--&lt;%&ndash;</tr>&ndash;%&gt;--%>
        <%--&lt;%&ndash;<tr>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<td colspan="2">&ndash;%&gt;--%>
                <%--&lt;%&ndash;<button class="btn btn-primary btn-lg btn-block" type="submit"&ndash;%&gt;--%>
                        <%--&lt;%&ndash;style="margin-top: 10px"&ndash;%&gt;--%>
                        <%--&lt;%&ndash;formaction="<%=basePath%>/user_login">登录&ndash;%&gt;--%>
                <%--&lt;%&ndash;</button>&ndash;%&gt;--%>
            <%--&lt;%&ndash;</td>&ndash;%&gt;--%>
        <%--&lt;%&ndash;</tr>&ndash;%&gt;--%>
        <%--&lt;%&ndash;<tr>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<td style="height: 50px; width: 150px"><a&ndash;%&gt;--%>
                    <%--&lt;%&ndash;href="<%=basePath%>/page_userRegister">注册账号</a></td>&ndash;%&gt;--%>
            <%--&lt;%&ndash;&lt;%&ndash;没写&ndash;%&gt;&lt;%&ndash;没写&ndash;%&gt;&lt;%&ndash;没写&ndash;%&gt;&lt;%&ndash;没写&ndash;%&gt;&lt;%&ndash;没写&ndash;%&gt;&lt;%&ndash;没写&ndash;%&gt;&ndash;%&gt;--%>
            <%--&lt;%&ndash;&lt;%&ndash;<td><a href="">忘记密码</a></td>&ndash;%&gt;&ndash;%&gt;--%>
        <%--&lt;%&ndash;</tr>&ndash;%&gt;--%>
        <%--&lt;%&ndash;&lt;%&ndash;<tr>&ndash;%&gt;&ndash;%&gt;--%>
            <%--&lt;%&ndash;&lt;%&ndash;<td colspan="2">&ndash;%&gt;&ndash;%&gt;--%>
                <%--&lt;%&ndash;&lt;%&ndash;<div align="center">&ndash;%&gt;&ndash;%&gt;--%>
                    <%--&lt;%&ndash;&lt;%&ndash;<h5>--------以其他方式快速登录--------</h5>&ndash;%&gt;&ndash;%&gt;--%>
                <%--&lt;%&ndash;&lt;%&ndash;</div>&ndash;%&gt;&ndash;%&gt;--%>
            <%--&lt;%&ndash;&lt;%&ndash;</td>&ndash;%&gt;&ndash;%&gt;--%>
        <%--&lt;%&ndash;&lt;%&ndash;</tr>&ndash;%&gt;&ndash;%&gt;--%>
    <%--&lt;%&ndash;</table>&ndash;%&gt;--%>
<%--&lt;%&ndash;</form>&ndash;%&gt;--%>
<%--&lt;%&ndash;<!-- 没写 -->&lt;%&ndash;没写&ndash;%&gt;&lt;%&ndash;没写&ndash;%&gt;&lt;%&ndash;没写&ndash;%&gt;&lt;%&ndash;没写&ndash;%&gt;&lt;%&ndash;没写&ndash;%&gt;&ndash;%&gt;--%>
<%--&lt;%&ndash;<form action="" method="post" class="form-horizontal ">&ndash;%&gt;--%>
    <%--&lt;%&ndash;<table&ndash;%&gt;--%>
            <%--&lt;%&ndash;style="margin: auto; margin-top: 10px; border-collapse: separate;table-layout: fixed">&ndash;%&gt;--%>
        <%--&lt;%&ndash;<tr>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<td>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<button class="btn btn-default btn-lg" type="submit" formaction="">QQ</button>&ndash;%&gt;--%>
            <%--&lt;%&ndash;</td>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<td>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<button class="btn btn-default btn-lg" type="submit"&ndash;%&gt;--%>
                        <%--&lt;%&ndash;formaction="">微信&ndash;%&gt;--%>
                <%--&lt;%&ndash;</button>&ndash;%&gt;--%>
            <%--&lt;%&ndash;</td>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<td>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<button class="btn btn-default btn-lg" type="submit"&ndash;%&gt;--%>
                        <%--&lt;%&ndash;formaction="">微博&ndash;%&gt;--%>
                <%--&lt;%&ndash;</button>&ndash;%&gt;--%>
            <%--&lt;%&ndash;</td>&ndash;%&gt;--%>
        <%--&lt;%&ndash;</tr>&ndash;%&gt;--%>
    <%--&lt;%&ndash;&lt;%&ndash;</table>&ndash;%&gt;&ndash;%&gt;--%>
<%--&lt;%&ndash;</form>&ndash;%&gt;--%>
<%--</body>--%>
<%--</html>--%>


<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false"
         pageEncoding="UTF-8" %>
<html>
<head>
    <%@ include file="basepage.jsp" %>
    <title>论坛登录</title>
    <style>
        body{background-color:#f5f5f5;}
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
        .form-signin {
            max-width: 300px;
            padding: 19px 29px 29px;
            margin: 0 auto 20px;
            background-color: #fff;
            border: 1px solid #e5e5e5;
            -webkit-border-radius: 5px;
            -moz-border-radius: 5px;
            border-radius: 5px;
            -webkit-box-shadow: 0 1px 2px rgba(0,0,0,.05);
            -moz-box-shadow: 0 1px 2px rgba(0,0,0,.05);
            box-shadow: 0 1px 2px rgba(0,0,0,.05);
        }
        .form-signin .form-signin-heading,
        .form-signin .checkbox {
            margin-bottom: 10px;
        }
        .form-signin-heading{color:#9b9b9b;}
        .form-signin input[type="text"],
        .form-signin input[type="password"] {
            font-size: 16px;
            height: auto;
            margin-bottom: 15px;
            padding: 7px 9px;
        }
        .register-span>a{color:#8c8c8c;margin-left: 100px;}

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
        <%--没写--%><%--没写--%><%--没写--%><%--没写--%><%--没写--%>
        <%--没写--%><%--没写--%><%--没写--%><%--没写--%><%--没写--%>
    </ul>
</div>
<div class="content-container">
    <form class="form-signin">
        <h2 class="form-signin-heading">登陆</h2>
        <input type="text" class="input-block-level" name="username" placeholder="请输入用户名称">
        <input type="password" name="password" class="input-block-level" placeholder="请输入密码">

        <button class="btn btn-large btn-primary" type="submit" formaction="<%=basePath%>/user_login">登陆</button>
        <span class="register-span"><a href="<%=basePath%>/page_userRegister">注册账号</a></span>
        <%--<table width="100%" style="margin-top:8px;"><tr>--%>
            <%--<td><button class="btn btn-mini btn-default" type="submit" formaction="">QQ</button></td>--%>
            <%--<td><button class="btn btn-mini btn-default" type="submit" formaction="">微信</button></td>--%>
            <%--<td><button class="btn btn-mini btn-default" type="submit" formaction="">微博</button></td>--%>
        <%--</tr></table>--%>
    </form>
    <!-- 没写 --><%--没写--%><%--没写--%><%--没写--%><%--没写--%><%--没写--%>
    <!--
    <form action="" method="post" class="form-horizontal ">
        <table
                style="margin: auto; margin-top: 10px; border-collapse: separate;table-layout: fixed">
            <tr>
                <td>
                    <button class="btn btn-default btn-lg" type="submit" formaction="">QQ</button>
                </td>
                <td>
                    <button class="btn btn-default btn-lg" type="submit"
                            formaction="">微信
                    </button>
                </td>
                <td>
                    <button class="btn btn-default btn-lg" type="submit"
                            formaction="">微博
                    </button>
                </td>
            </tr>
        </table>
    </form>
    !-->
</div>
<div id="foot-container" class="global-width">
    <div id="foot-left-div" class="inline-block">
        <span>Luntan © 2017</span>
    </div >
    <div id="foot-right-div" class="inline-block">
        <%--<span><a href="#">社区</a></span>--%>
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
</body>
</html>
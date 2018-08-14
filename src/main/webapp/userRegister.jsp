<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false"
         pageEncoding="UTF-8" %>
<html>
<head>
    <%@ include file="basepage.jsp" %>
    <title>注册</title>
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
        #resendSms{color:#7e7e7e;}
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
        <%--监听获取验证码的按钮点击事件--%>
        $(function () {
            $("#resendSms").click(function () {
                sendCode($("#resendSms"));
            });
            countdown = getCookie("countdown");//获取cookie值
            if (countdown > 0) {
                settime($("#resendSms"));//开始倒计时
            }
        })
        //发送验证码
        function sendCode(obj) {
            doPostBack("<%=basePath%>/user_registerCode");
            //天天换行烦不烦啊？
            setCookie("countdown", 30);//添加cookie记录,有效时间60s
            settime(obj);//开始倒计时
        }
        //将手机利用ajax提交到后台的发短信接口
        function doPostBack(url) {
            var mobile = $("#mobile").val();//获取手机号码
            $.ajax({
                async: false,
                cache: false,
                type: 'POST',
                data: "mobile=" + mobile,//发送到后端
                url: url,// 请求的action路径
                error: function () {// 请求失败处理函数
                    alert("由于网络繁忙，请等待后再获取验证码");
                },
                success: function () {
                    alert("已经获取验证码，请耐心等待");
                }
            });
        }
        //开始倒计时
        var countdown;
        function settime(obj) {
            countdown = getCookie("countdown");
            if (countdown == 0) {
                obj.removeAttr("disabled");
                obj.val("重新获取验证码");
                delCookie("countdown");//删除cookie
                return;
            } else {
                obj.attr("disabled", true);
                obj.val(countdown + "s后重新发送");
                countdown--;
                setCookie("countdown", countdown);
            }
            setTimeout(function () {
                settime(obj)
            }, 1000) //每1000毫秒执行一次
        }
        // 把对cookie的操作封装了
        function setCookie(name, value) {
            var Days = 30; //此cookie将被保存30天
            var exp = new Date(); //new Date("December 31,9998");
            exp.setTime(exp.getTime() + Days * 24 * 60 * 60 * 1000);
            document.cookie = name + "= " + escape(value) + ";expires= " + exp.toGMTString();
        }
        function getCookie(name) {
            var arr = document.cookie.match(new RegExp("(^|)" + name + "=([^;]*)(;|$)"));
            if (arr != null) {
                return unescape(arr[2]);
            }
            return null;
        }
        function delCookie(name) {
            var exp = new Date();
            exp.setTime(exp.getTime() - 1);
            var cval = getCookie(name);
            if (cval != null) {
                document.cookie = name + "= " + cval + ";expires= " + exp.toGMTString();
            }
        }
    </script>
</head>
<body>

<div class="head-container">
    <ul class="global-width" style="padding-left: 0;">
        <li class="head-left-text inline-block"><a href="<%=basePath%>/roomMain_show"><b>Luntan</b></a></li>
        <%--<li class="head-right-text inline-block"><a href="<%=basePath%>/page_roomWrite">添加文章</a></li>--%>
        <%--<li class="head-right-text inline-block"><a href="<%=basePath%>/page_userInfo">我的资料</a></li>--%>
        <%--没写--%><%--没写--%><%--没写--%><%--没写--%><%--没写--%>
        <%--没写--%><%--没写--%><%--没写--%><%--没写--%><%--没写--%>
    </ul>
</div>
<div class="content-container">
    <form action="" method="post" class="form-horizontal ">
        <div class="global-width" style="width: 30%;">

            <!--  <table style="margin: auto; margin-top: 50px; border-spacing: 0px 10px;">   !-->

            <div class="input-group">
						<span class="input-group-addon glyphicon glyphicon-user"
                              id="basic-addon1"></span>
                <input type="text" name="username" required
                       class="form-control" placeholder="请输入用户名"
                       aria-describedby="basic-addon1">
            </div>
            <div class="input-group">
						<span class="input-group-addon glyphicon glyphicon-eye-open"
                              id="basic-addon2"></span>
                <input type="password" name="password" required
                       class="form-control" placeholder="请输入用户密码"
                       aria-describedby="basic-addon2">
            </div>
            <div class="input-group" style="margin-bottom:15px;">
						<span class="input-group-addon glyphicon glyphicon-eye-open "
                              id="basic-addon3"></span>
                <input type="password" name="tempPassword" required
                       class="form-control" placeholder="请再次输入用户密码"
                       aria-describedby="basic-addon3">
            </div>
            <div class="input-group text-center" style="width:100%;margin: 0;">
                <div class="btn-group" data-toggle="buttons" style="width: 80%;height:30px;">
                    <label class="btn btn-small btn-default" style="width: 25%;color:#7e7e7e;">
                        <input required type="radio" name="sex" value="男">男
                    </label>
                    <label class="btn btn-small btn-default" style="width: 25%;float:right;color:#7e7e7e;">
                        <input required type="radio" name="sex" value="女"> 女
                    </label>
                </div></div>
            <div class="input-group" style="margin-top:15px;">
						<span class="input-group-addon glyphicon glyphicon-phone-alt"
                              id="basic-addon4"></span>
                <input type="text" id="mobile" required
                       name="mobile" class="form-control" placeholder="请输入手机号码"
                       aria-describedby="basic-addon4">
            </div>
            <div class="input-group">
						<span class="input-group-addon glyphicon glyphicon-home"
                              id="basic-addon5"></span>
                <input type="text" id="address"
                       name="address" class="form-control" placeholder="请输入地址"
                       aria-describedby="basic-addon5">
            </div>
            <%--<div class="input-group" style="width:100%;">--%>
                <%--<div class="inline-block"style="width: 55%;margin-right:5%;">--%>
                    <%--<input type="text" name="code" class="form-control" required--%>
                           <%--placeholder="请输入验证码"/>--%>
                <%--</div>--%>
                <%--<div class="inline-block" style="width:37%;position:relative;bottom:13px;">--%>
                    <%--<input value="获取验证码" id="resendSms"--%>
                           <%--class="btn btn-default" type="button"/>--%>
                <%--</div>--%>
            <%--</div>--%>

            <button class="btn btn-primary btn-lg btn-block" type="submit"
                    style="margin-top: 10px" formaction="<%=basePath%>/user_register">注册
            </button>
            <!--
            <tr>
                <td colspan="2">
                    <div align="center">
                        <h5>----------以其他方式快速注册----------</h5>
                    </div>
                </td>
            </tr>
        </table>
        !-->
        </div>
    </form>
</div>
<%--<form action="" method="post" class="form-horizontal ">--%>
    <%--<table style="margin: auto; margin-top: 50px; border-spacing: 0px 10px;">--%>
        <%--<tr>--%>
            <%--<td colspan="2">--%>
                <%--<div class="input-group">--%>
						<%--<span class="input-group-addon glyphicon glyphicon-user"--%>
                              <%--id="basic-addon1"></span>--%>
                    <%--<input type="text" name="username" required--%>
                           <%--class="form-control" placeholder="必填#请输入用户名"--%>
                           <%--aria-describedby="basic-addon1">--%>
                <%--</div>--%>
            <%--</td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td colspan="2">--%>
                <%--<div class="input-group">--%>
						<%--<span class="input-group-addon glyphicon glyphicon-eye-open"--%>
                              <%--id="basic-addon2"></span>--%>
                    <%--<input type="password" name="password" required--%>
                           <%--class="form-control" placeholder="必填#请输入用户密码"--%>
                           <%--aria-describedby="basic-addon2">--%>
                <%--</div>--%>
            <%--</td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td colspan="2">--%>
                <%--<div class="input-group">--%>
						<%--<span class="input-group-addon glyphicon glyphicon-eye-open "--%>
                              <%--id="basic-addon3"></span>--%>
                    <%--<input type="password" name="tempPassword" required--%>
                           <%--class="form-control" placeholder="必填#请再次输入用户密码"--%>
                           <%--aria-describedby="basic-addon3">--%>
                <%--</div>--%>
            <%--</td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td colspan="2">--%>
                <%--<div class="input-group">--%>
						<%--<span class="input-group-addon glyphicon glyphicon-phone-alt"--%>
                              <%--id="basic-addon4"></span>--%>
                    <%--<input type="text" id="mobile" required--%>
                           <%--name="mobile" class="form-control" placeholder="必填#请输入手机号码"--%>
                           <%--aria-describedby="basic-addon4">--%>
                <%--</div>--%>
            <%--</td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td colspan="2">--%>
                <%--<div class="input-group">--%>
						<%--<span class="input-group-addon glyphicon glyphicon-home"--%>
                              <%--id="basic-addon5"></span>--%>
                    <%--<input type="text" id="address"--%>
                           <%--name="address" class="form-control" placeholder="请输入地址"--%>
                           <%--aria-describedby="basic-addon5">--%>
                <%--</div>--%>
            <%--</td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td><input type="text" name="code" class="form-control" required--%>
                       <%--placeholder="必填#请输入验证码"/></td>--%>
            <%--<td><input value="获取验证码" id="resendSms"--%>
                       <%--class="btn btn-default btn-block" type="button"/></td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td colspan="2">--%>
                <%--<div class="btn-group" style="margin-top: 10px"--%>
                     <%--data-toggle="buttons">--%>
                    <%--<label class="btn btn-default" style="width: 150px">--%>
                        <%--<input required type="radio" name="sex" value="男">男--%>
                    <%--</label>--%>
                    <%--<label class="btn btn-default" style="width: 150px">--%>
                        <%--<input required type="radio" name="sex" value="女"> 女--%>
                    <%--</label>--%>
                <%--</div>--%>
            <%--</td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td colspan="2">--%>
                <%--<button class="btn btn-primary btn-lg btn-block" type="submit"--%>
                        <%--style="margin-top: 10px" formaction="<%=basePath%>/user_register">注册--%>
                <%--</button>--%>
            <%--</td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td colspan="2">--%>
                <%--<div align="center">--%>
                    <%--<h5>----------以其他方式快速注册----------</h5>--%>
                <%--</div>--%>
            <%--</td>--%>
        <%--</tr>--%>
    <%--</table>--%>
<%--</form>--%>
<!-- 没写 -->
<!-- 没写 -->
<!-- 没写 -->
<!-- 没写 -->
<%--<form action="" method="post" class="form-horizontal ">--%>
    <%--<table style="margin: auto; margin-top: 10px; table-layout: fixed">--%>
        <%--<tr>--%>
            <%--<td>--%>
                <%--<button class="btn btn-default btn-lg" type="submit"--%>
                        <%--formaction="">QQ--%>
                <%--</button>--%>
            <%--</td>--%>
            <%--<td>--%>
                <%--<button class="btn btn-default btn-lg" type="submit"--%>
                        <%--formaction="">微信--%>
                <%--</button>--%>
            <%--</td>--%>
            <%--<td>--%>
                <%--<button class="btn btn-default btn-lg" type="submit"--%>
                        <%--formaction="">微博--%>
                <%--</button>--%>
            <%--</td>--%>
        <%--</tr>--%>
    <%--</table>--%>
<%--</form>--%>
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
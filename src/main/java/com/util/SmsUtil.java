package com.util;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;

public class SmsUtil {
    // 本质就是利用一个在线网页，获取验证码
    static String postUrl = "http://106.ihuyi.cn/webservice/sms.php?method=Submit";
    // 用户名是登录ihuyi.com账号名（例如：cf_demo123）
    // apiid
    static String account = "C21741837";
    // 查看密码请登录用户中心->验证码、通知短信->帐户及签名设置->APIKEY
    // apikey
    static String password = "ab53d0708b23615a45fc7a40aa920aa6";

    // 验证码
    private static int SmsCode;

    //    超简易的test 工具类都能这样写？算是偷巧了
    public static void main(String[] args) throws ClassNotFoundException {
        Log4jUtil.info("info", "验证SmsUtil");

        setSmsCode((int) ((Math.random() * 9 + 1) * 100000)); // 获取随机数/验证码
        getSmsCode();
        SmsUtil.sendSms("13712750168");
    }

    public static void sendSms(String mobile) {
//        Log4jUtil.info("info", "发送验证码");
//        setSmsCode((int) ((Math.random() * 9 + 1) * 100000)); // 获取随机数/验证码
//        String content = new String("您的验证码是：" + SmsCode + "。请不要把验证码泄露给其他人。");
//        try {
//            URL url = new URL(postUrl);
//            HttpURLConnection connection = (HttpURLConnection) url.openConnection();
//            connection.setDoOutput(true);// 允许连接提交信息
//            connection.setRequestMethod("POST");// 网页提交方式“GET”、“POST”
//            connection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
//            connection.setRequestProperty("Connection", "Keep-Alive");
//            StringBuffer sb = new StringBuffer();
//            sb.append("account=" + account);
//            sb.append("&password=" + password);
//            sb.append("&mobile=" + mobile);
//            sb.append("&content=" + content);
//            OutputStream os = connection.getOutputStream();
//            os.write(sb.toString().getBytes());
//            os.close();
//            // // 以下代码用于看提交结果
//            // eclipse自带错误
//            String line, result = "";
//            System.out.println(mobile);
//            BufferedReader in = new BufferedReader(new InputStreamReader(connection.getInputStream(), "utf-8"));
//            while ((line = in.readLine()) != null) {
//                result += line + "\n";
//            }
//            in.close();
//        } catch (IOException e) {
//            Log4jUtil.error("error", "发送手机验证码失败", e);
//            e.printStackTrace();
//        }
    }

    public static void setSmsCode(int smsCode) {
        Log4jUtil.info("info", "设置验证码为", SmsCode);
        SmsCode = smsCode;
    }

    public static String getSmsCode() {
        Log4jUtil.info("info", "得到验证码", SmsCode);
        return "" + SmsCode;
    }

}

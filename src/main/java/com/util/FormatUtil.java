package com.util;

import com.entity.RoomEntity;
import com.entity.UserEntity;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;

/**
 * Created by LGP on 2017/7/8.
 */
public class FormatUtil {
    /**
     * 大陆手机号码11位数，匹配格式：前三位固定格式+后8位任意数
     * 此方法中前三位格式有：
     * 13+任意数
     * 15+除4的任意数
     * 18+除1和4的任意数
     * 17+除9的任意数
     * 147
     */
    public static boolean isPhoneFormat(String str) throws PatternSyntaxException {
        Log4jUtil.info("info", "判断手机号码格式是否正确");
        String regExp = "^((13[0-9])|(15[^4])|(18[0,2,3,5-9])|(17[0-8])|(147))\\d{8}$";
        Pattern p = Pattern.compile(regExp);
        Matcher m = p.matcher(str);
        return m.matches();
    }

    public static boolean isEmptyRegister(UserEntity userEntity, String code, String tempPassword) {
        Log4jUtil.info("info", "判断注册数据格式是否为空");
        if ("".equals(userEntity.getUsername().trim()) || "".equals(userEntity.getPassword().trim())
                || "".equals(tempPassword.trim()) || "".equals(userEntity.getMobile().trim())
                || "".equals(code.trim()) || "".equals(userEntity.getSex().trim())) {
            return true;
        }
        return false;
    }

    public static boolean isEmptyLogin(UserEntity userEntity) {
        Log4jUtil.info("info", "判断登录数据格式是否为空");
        if ("".equals(userEntity.getUsername().trim()) || "".equals(userEntity.getPassword().trim())) {
            return true;
        }
        return false;
    }

    public static boolean isEmptyRoom(RoomEntity roomEntity) {
        Log4jUtil.info("info", "判断房间主题，内容是否为空");
        if ("".equals(roomEntity.getRoomTitle().trim()) || "".equals(roomEntity.getRoomWords().trim())) {
            return true;
        }
        return false;
    }

    public static boolean isEmptyRewritePassword(String oldPassword, String newPassword, String tempPassword) {
        if ("".equals(oldPassword.trim()) || "".equals(newPassword.trim()) ||"".equals(tempPassword.trim())) {
            return true;
        }
        return false;
    }
}
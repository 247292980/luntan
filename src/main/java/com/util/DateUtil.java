package com.util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtil {
    public static String getDate(String dateFormat) {
        SimpleDateFormat df = new SimpleDateFormat(dateFormat);//设置日期格式
        return df.format(new Date());// new Date()为获取当前系统时间
    }
}

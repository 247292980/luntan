package com.util;

/**
 * Created by LGP on 2017/7/8.
 */

import java.util.HashMap;
import java.util.Map;

import org.apache.log4j.Logger;

public class Log4jUtil {
    //log的位置
    //在方法头log
    private static Map<String, Logger> loggerMap = new HashMap<String, Logger>();

    public static void main(String[] args) throws ClassNotFoundException {
        Log4jUtil.error("错误类型", "描述错误");
        Log4jUtil.debug("错误类型", "描述错误");
        Log4jUtil.info("错误类型", "描述错误");
        Log4jUtil.warn("错误类型", "描述错误");
    }

//    public static void debug(String tag, Object message) {
//        String className = getClassName();
//        Logger log = getLogger(className);
//        if (log.isDebugEnabled()) {
//            log.debug(new StringBuffer().append("【").append(tag).append("】").append(message).toString());
//        }
//    }


//     看源码把 log其实就两种方法 log一个string和log一个string和异常错误了
//    然后能自己调用自己 递归
//    然后他们都可以是Object格式 那么代码就可以只写一个 充分利用多态性
    public static void debug(String tag, Object... messages) {
//        这样传class第一次见啊
//        getClassName开了一个新的异常
        String className = getClassName();
        Logger log = getLogger(className);
        StringBuffer logStringBuffer = new StringBuffer().append("【").append(tag).append("】");
        for (Object message : messages) {
            logStringBuffer.append(message);
        }
            log.debug(logStringBuffer.toString());

    }

//    //    注意异常错误放前面只显示异常名字 后面就显示全部
//    public static void debug(String tag, Throwable t) {
//        String className = getClassName();
//        Logger log = getLogger(className);
//        StringBuffer logStringBuffer = new StringBuffer().append("【").append(tag).append("】");
//        if (log.isDebugEnabled()) {
//            log.debug(logStringBuffer.toString(), t);
//        }
//    }

//    public static void info(String tag, Object message) {
//        String className = getClassName();
//        Logger log = getLogger(className);
//        if (log.isInfoEnabled()) {
//            log.info(new StringBuffer().append("【").append(tag).append("】").append(message).toString());
//        }
//    }

    public static void info(String tag, Object... messages) {
        String className = getClassName();
        Logger log = getLogger(className);
        StringBuffer logStringBuffer = new StringBuffer().append("【").append(tag).append("】");
        for (Object message : messages) {
            logStringBuffer.append(message);
        }
            log.info(logStringBuffer.toString());

    }
//
//    public static void info(String tag, Throwable t) {
//        String className = getClassName();
//        Logger log = getLogger(className);
//        StringBuffer logStringBuffer = new StringBuffer().append("【").append(tag).append("】");
//        if (log.isDebugEnabled()) {
//            log.info(logStringBuffer.toString(), t);
//        }
//    }
//    public static void warn(String tag, Object message) {
//        String className = getClassName();
//        Logger log = getLogger(className);
//        log.warn(new StringBuffer().append("【").append(tag).append("】").append(message).toString());
//    }

    public static void warn(String tag, Object... messages) {
        String className = getClassName();
        Logger log = getLogger(className);
        StringBuffer logStringBuffer = new StringBuffer().append("【").append(tag).append("】");
        for (Object message : messages) {
            logStringBuffer.append(message);
        }
            log.warn(logStringBuffer.toString());
    }
//
//    public static void warn(String tag, Throwable t) {
//        String className = getClassName();
//        Logger log = getLogger(className);
//        StringBuffer logStringBuffer = new StringBuffer().append("【").append(tag).append("】");
//        if (log.isDebugEnabled()) {
//            log.warn(logStringBuffer.toString(), t);
//        }
//    }
//    public static void error(String tag, Object message) {
//        String className = getClassName();
//        Logger log = getLogger(className);
//        log.error(new StringBuffer().append("【").append(tag).append("】").append(message).toString());
//    }

    public static void error(String tag, Object... messages) {
        String className = getClassName();
        Logger log = getLogger(className);
        StringBuffer logStringBuffer = new StringBuffer().append("【").append(tag).append("】");
        for (Object message : messages) {
            logStringBuffer.append(message);
        }
            log.error(logStringBuffer.toString());
    }

//    public static void error(String tag, Throwable t) {
//        String className = getClassName();
//        Logger log = getLogger(className);
//        StringBuffer logStringBuffer = new StringBuffer().append("【").append(tag).append("】");
//        if (log.isDebugEnabled()) {
//            log.error(logStringBuffer.toString(), t);
//        }
//    }

    /**
     * 获取最开始的调用者所在类
     *
     * @return
     */
    private static String getClassName() {
        Throwable th = new Throwable();
        StackTraceElement[] stes = th.getStackTrace();
        StackTraceElement ste = stes[2];
        return ste.getClassName();
    }

    /**
     * 根据类名获得logger对象
     * @param className
     * @return
     */
    private static Logger getLogger(String className) {
        Logger log = null;
        if (loggerMap.containsKey(className)) {
            log = loggerMap.get(className);
        } else {
            try {
                log = Logger.getLogger(Class.forName(className));
                loggerMap.put(className, log);
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            }
        }
        return log;
    }
}


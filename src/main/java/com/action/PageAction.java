package com.action;

import com.opensymphony.xwork2.ActionSupport;
import com.util.Log4jUtil;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.util.ServletContextAware;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import java.util.Map;


/**
 * Created by LGP on 2017/7/6.
 */
public class PageAction extends ActionSupport {
//特意用这个跳转页面
    public String execute() {
        HttpServletRequest request = ServletActionContext.getRequest();
        StringBuffer url =request.getRequestURL();
        Log4jUtil.info("info", "页面跳转到",url);
        return SUCCESS;
    }
}

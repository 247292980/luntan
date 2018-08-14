package com.action;

import java.io.*;
import java.util.List;
import java.util.Map;

import com.alibaba.fastjson.JSONObject;
import com.util.*;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.RequestAware;

import com.entity.UserEntity;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.service.IUserService;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.interceptor.SessionAware;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.ws.Response;

import static org.apache.struts2.ServletActionContext.getServletContext;

//Aware接口其实就是一个简单的拦截器 根据作用域拦截
public class UserAction extends ActionSupport implements ModelDriven<UserEntity>, SessionAware, ServletResponseAware {
    private HttpServletResponse httpServletResponse;
    private Map<String, Object> session;
    private UserEntity userEntity;
    private IUserService userService;// model
    private String message;//用于log
    //    struct2通过写set方法获取前端的组件值 这就是注入啊
    private String tempPassword;
    private String code;
    private String newPassword;


    private File headPhotoFile;

    //如果action的user是空的，新建一个user
    @Override
    public UserEntity getModel() {
        if (userEntity == null) {
            userEntity = new UserEntity();
        }
        return userEntity;
    }

    @Override
    public void setServletResponse(HttpServletResponse httpServletResponse) {
        this.httpServletResponse = httpServletResponse;
    }

    @Override
    public void setSession(Map<String, Object> map) {
        this.session = map;
    }

    public UserEntity getUserEntity() {
        return userEntity;
    }

    // 只要request传过来的值和userEntity类名及其属性名 其他值 一样
    // 就会自己调用这方法
    public void setUserEntity(UserEntity userEntity) {
        this.userEntity = userEntity;
    }

    public void setUserService(IUserService userService) {
        this.userService = userService;
    }

    public File getHeadPhotoFile() {
        return headPhotoFile;
    }

    public void setHeadPhotoFile(File headPhotoFile) {
        this.headPhotoFile = headPhotoFile;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public void setTempPassword(String tempPassword) {
        this.tempPassword = tempPassword;
    }

    public String getTempPassword() {
        return tempPassword;
    }

    public String getCode() {
        return code;
    }

    public String getNewPassword() {
        return newPassword;
    }

    public void setNewPassword(String newPassword) {
        this.newPassword = newPassword;
    }

    //    action-->service--->dao的顺序注入即可
//    action数据处理外加能否进行事务判断
//    service进行事务
//    dao进行与数据库相关的事务
//    log只写在action和service以及工具类中 体现的是代码逻辑？
//    log只写在action和service以及工具类中 体现的是代码逻辑？
//    log只写在action和service以及工具类中 体现的是代码逻辑？
    public String sendRegisterCode() {
        if (!(FormatUtil.isPhoneFormat(userEntity.getMobile().trim()))) {
            message = "手机号码格式不正确";
            Log4jUtil.info("info", userEntity.getMobile(), message);
            return ERROR;
        }
        message = "发送验证码";
        Log4jUtil.info("info", message);

//        userService.sendRegisterCode(userEntity.getMobile());
        return SUCCESS;
    }

    public String register() {
//        虽然前端有设必填属性
//        但是存在空格的情况
//        故在后端要二次检测
//        if (FormatUtil.isEmptyRegister(userEntity, code, tempPassword)) {
////            判断必填信息是否有空格
//            message = "存在注册信息为空";
//            Log4jUtil.info("info", message);
//            return ERROR;
//        }
        if (!(tempPassword.equals(userEntity.getPassword()))) {
//            判断重复输入的密码是否一样
            message = "两次密码不一致";
            Log4jUtil.info("info", message);
            return ERROR;
        }

        if (userService.isUsernameExist(userEntity)) {
//	        true 代表有存在的用户名 不给注册
            message = "用户名已存在";
            Log4jUtil.info("info", message);
            return ERROR;
        }

//        if (!(SmsUtil.getSmsCode().equals(code))) {
////            判断验证码是否正确
//            message = "验证码输入错误";
//            Log4jUtil.info("info", message);
//            return ERROR;
//        }
        message = "注册用户";
        Log4jUtil.info("info", message);
        userService.register(userEntity);
        return SUCCESS;
    }

    public String login() {
        message = "开始登录";
        Log4jUtil.info("info", message);

        if (FormatUtil.isEmptyLogin(userEntity)) {
            message = "用户名或密码为空";
            Log4jUtil.info("info", message);
            return ERROR;
        }

        List<UserEntity> userEntityList = userService.login(userEntity);
        if (userEntityList.size() != 1) {
            message = "用户名密码错误";
            Log4jUtil.info("info", message);
            return ERROR;
        }
//        user放在session里面也就是这有这次打开页面会记住
//        setUserEntity把取出来的覆盖掉只有账号密码的userEntity
        setUserEntity(userEntityList.get(0));
//        request.put("message",message);
        session.put("userEntity", userEntity);
        return SUCCESS;
    }

    public String rewriteInfo() {
        message = "开始修改个人信息";
        Log4jUtil.info("info", message);

        UserEntity sessionUser = (UserEntity) session.get("userEntity");
        userEntity.setUserId(sessionUser.getUserId());
        userEntity.setPassword(sessionUser.getPassword());

        userService.rewriteInfo(userEntity);
        session.put("userEntity", userEntity);

        return SUCCESS;
    }

    public String rewritePassword() throws Exception {
        message = "开始修改用户密码";
        Log4jUtil.info("info", message);

        if (FormatUtil.isEmptyRewritePassword(userEntity.getPassword(), newPassword, tempPassword)) {
            message = "输入的密码为空";
            Log4jUtil.info("info", message);
            return ERROR;
        }
        if (!(newPassword.equals(tempPassword))) {
            message = "两次输入的密码不一致";
            Log4jUtil.info("info", message);
            return ERROR;
        }
        if (newPassword.equals(userEntity.getPassword())) {
            message = "新密码和旧密码一样";
            Log4jUtil.info("info", message);
            return ERROR;
        }

        UserEntity tempUserEntity = (UserEntity) session.get("userEntity");
        tempUserEntity.setPassword(userEntity.getPassword());
        List<UserEntity> userEntityList = userService.login(tempUserEntity);

        if (userEntityList.size() != 1) {
            message = "用户名密码错误";
            Log4jUtil.info("info", message);
            return ERROR;
        }
        setUserEntity(userEntityList.get(0));
//        然后改password 直接update即可
        userEntity.setPassword(newPassword);
        userService.rewritePassword(userEntity);

        session.put("userEntity", userEntity);
        return SUCCESS;
    }

//    public void setHead() throws IOException, FileUploadException {
//        message = "开始设置用户头像";
//        Log4jUtil.info("info", message);
//        //得到用户的信息
//        UserEntity sessionUser = (UserEntity) session.get("userEntity");
//
//        //判断有没有文件
//        if (null == headPhotoFile) {
//            message = "头像没有传到后端";
//            Log4jUtil.info("info", message);
//            return;
//        }
//
//        //生成保存的地址photo+id+date+fileName
//        String dateString = DateUtil.getDate("yyyyMMdd");
//        String path = "/photo/" + sessionUser.getUserId() + "/" + dateString;
//        //随机生成文件名
//        String fileName = PhotoUtil.getRandomString(16);
//        //取得后缀 默认是tmp?
//        String ext = headPhotoFile.getName().substring(headPhotoFile.getName().indexOf("."));
//        String saveDirectory = getServletContext().getRealPath(path) + "/" + fileName + ext;
//        Log4jUtil.info("info", "文件保存地址" + saveDirectory);
//        //创建文件
//        File uploadFile = new File(saveDirectory);
//        if (!uploadFile.exists()) {
//            Log4jUtil.info("info", "创建文件保存地址" +  uploadFile.getPath());
//            uploadFile.getParentFile().mkdirs();//mkdir只创建一层 mkdirs创建多层
//        }
//        uploadFile.createNewFile();
//        //保存文件
//        FileInputStream fis = new FileInputStream(headPhotoFile);
//        OutputStream os = new FileOutputStream(uploadFile);
//        byte[] buffer = new byte[1024];
//        int len = 0;
//        while ((len = fis.read(buffer)) > -1) {
//            os.write(buffer, 0, len);
//        }
//        os.close();
//        fis.close();
//        //把地址放到数据库
//        sessionUser.setHeadPhoto(uploadFile.getPath());
//        userService.setHeadPhoto(sessionUser);
//        // 处理完成后,必须返回一个json数据,否则会报错误
//        JSONObject jsonObject = new JSONObject();
//        jsonObject.put("result", "ok");
//        httpServletResponse.getWriter().write(jsonObject.toString());
////        return SUCCESS;
//    }


}
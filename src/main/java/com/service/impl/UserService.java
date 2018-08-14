package com.service.impl;

import com.dao.IUserDao;
import com.entity.UserEntity;
import com.service.IUserService;
import com.util.Log4jUtil;
import com.util.SmsUtil;

import java.util.List;

public class UserService implements IUserService {
    //    总的来说就是IService里定义有什么做
//    然后调用IDao来实现
    public void setUserDao(IUserDao userDao) {
        this.userDao = userDao;
    }

    private IUserDao userDao;

    @Override
//    这里让我彻底明白IDB和IServicce的区别
//    IDB里只写数据库相关操作
//    IService里可以写第三方包操作
    public void sendRegisterCode(String mobile) {
        Log4jUtil.info("info", "发送验证码");
        SmsUtil.sendSms(mobile);
    }

    //dao的方法能让人一眼就明白数据库操作
// service的方法则让人明白是什么操作
    @Override
    public boolean isUsernameExist(UserEntity userEntity) {
        Log4jUtil.info("info", "查询用户名是否存在");
        return userDao.isUsernameExist(userEntity);
    }

    @Override
    public void rewriteInfo(UserEntity userEntity) {
        Log4jUtil.info("info", "更新用户信息");
        userDao.updateUser(userEntity);
    }

    @Override
    public void rewritePassword(UserEntity userEntity) {
        Log4jUtil.info("info", "修改用户密码");
        userDao.updateUser(userEntity);
    }

    @Override
    public void setHeadPhoto(UserEntity userEntity) {
        Log4jUtil.info("info", "设置用户头像");
        userDao.updateUser(userEntity);
    }

    @Override
    public void register(UserEntity userEntity) {
        Log4jUtil.info("info", "插入用户");
        userDao.insertUser(userEntity);
    }

    @Override
    public List<UserEntity> login(UserEntity userEntity) {
        Log4jUtil.info("info", "查询用户是否存在");
        return userDao.selectUser(userEntity);
    }
}

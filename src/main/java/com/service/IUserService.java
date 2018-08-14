package com.service;

import com.entity.UserEntity;

import java.util.List;

public interface IUserService {

//注册
    public void register(UserEntity userEntity);
//登录
    public List<UserEntity> login(UserEntity userEntity);
//判断用户是否存在
    public boolean isUsernameExist(UserEntity userEntity);
//更改用户信息
    public void rewriteInfo(UserEntity userEntity);
//更改密码
    public void rewritePassword(UserEntity userEntity);




    public void setHeadPhoto(UserEntity userEntity);

    public void sendRegisterCode(String mobile);
}


package com.dao;

import com.entity.UserEntity;

import java.util.List;

public interface IUserDao {
    //注册
    public void insertUser(UserEntity userEntity);

    //    查询用户名和密码一致的用户 登录
    public List<UserEntity> selectUser(UserEntity userEntity);

    //    查询用户名有没有被使用
    public boolean isUsernameExist(UserEntity userEntity);

    public void updateUser(UserEntity userEntity);
}

package com.dao.impl;

import com.dao.IUserDao;
import com.entity.UserEntity;

import java.util.List;

public class UserDao extends DBDao implements IUserDao {
//方法命名 根据返回值
	@Override
	public void insertUser(UserEntity userEntity) {
		super.insert(userEntity);
	}
	@Override
	public List<UserEntity> selectUser(UserEntity userEntity) {
		return super.selectUser(userEntity);
	}

	@Override
//	存在返回 true 不存在返回 false
	public boolean isUsernameExist(UserEntity userEntity) {
		return (super.selectUsername(userEntity).size()!=0);
	}

	@Override
	public void updateUser(UserEntity userEntity) {
		super.update(userEntity);
	}
}

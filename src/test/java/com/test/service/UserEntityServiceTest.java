package com.test.service;

import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.entity.UserEntity;
import com.service.IUserService;

public class UserEntityServiceTest {
	UserEntity userEntity = new UserEntity();
	String mobile="13712750168";
	private BeanFactory factory = null;

	@Before
	public void before() {
		factory = new ClassPathXmlApplicationContext("applicationContext.xml");
	}

	@Test
	public void test_UserService_Register() {
		System.out.println("begin test_UserService_Register");
		IUserService userService = (IUserService) factory.getBean("userService");
		userService.register(userEntity);
		System.out.println("end test_UserService_Register");
	}
	@Test
	public void test_UserService_RegisterCode() {
		System.out.println("begin test_UserService_RegisterCode");
		IUserService userService = (IUserService) factory.getBean("userService");
		userService.sendRegisterCode(mobile);
		System.out.println("end test_UserService_RegisterCode");
	}
}

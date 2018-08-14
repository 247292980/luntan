package com.test.action;

import com.entity.UserEntity;
import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.action.UserAction;

public class UserEntityActionTest {
	UserEntity userEntity = new UserEntity();
	private BeanFactory factory = null;

	@Before
	public void before() {
		factory = new ClassPathXmlApplicationContext("applicationContext.xml");
	}

	@Test
	public void test_UserAction_Register() {
		System.out.println("begin test_UserAction_Register");
		UserAction userAction =  (UserAction) factory.getBean("userAction");
		String result = userAction.register();
		System.out.println("end test_UserAction_Register");
	}
	@Test
	public void test_UserAction_Login() {
		System.out.println("begin test_UserAction_Login");
		UserAction userAction =  (UserAction) factory.getBean("userAction");
		String result = userAction.login();
		System.out.println("end test_UserAction_Login");
	}
}

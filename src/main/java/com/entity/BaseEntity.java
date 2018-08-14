package com.entity;

import java.lang.reflect.Field;

/**
 * Created by liangguiping on 2017/8/11.
 */
public class BaseEntity {
    public void sout()throws Exception{
        Field[] fields = this.getClass().getDeclaredFields();
        int len=fields.length;
        for (int i=0;i<len;i++){
            Field field = fields[i];
            field.setAccessible(true);
            System.out.println("属性名:" + field.getName() + "\n属性值:" + field.get(this)+"\n");
        }
    }

//    public static void main(String[] args) throws Exception {
//        UserEntity userEntity=new UserEntity();
//        userEntity.setAddress("111");
//        userEntity.setMobile("526463");
//        userEntity.setPassword("32134");
//
//        userEntity.sout();
//    }
}

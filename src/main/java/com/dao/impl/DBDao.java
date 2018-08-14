package com.dao.impl;

import com.entity.WordsEntity;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.dao.IDBDao;
import com.entity.UserEntity;
import org.hibernate.criterion.Restrictions;

import java.util.ArrayList;
import java.util.List;

public class DBDao<T> implements IDBDao<T> {
    private SessionFactory sessionFactory = buildSessionFactory();

    private SessionFactory buildSessionFactory() {
        try {
            return new Configuration().configure().buildSessionFactory();
        } catch (Throwable ex) {
            System.err.println("Initial SessionFactory creation failed." + ex);
            throw new ExceptionInInitializerError(ex);
        }
    }

    public Session getCurrentSession() {
        return this.sessionFactory.openSession();
    }

    @Override
    public void insert(T t) {
        Session session = this.getCurrentSession();
        session.beginTransaction();
        session.save(t);
//      看了下文档上
//		public Serializable save(Object object) throws HibernateException;
//		出错会自己处理的理论上不用管

//       session.save(t);
//      用sessionFactory返回的一定是0
//      正常应该返回主键
        session.getTransaction().commit();
        session.close();
    }

    @Override
    public void delete(T t) {
        Session session = this.getCurrentSession();
        session.beginTransaction();
        session.delete(t);
        session.getTransaction().commit();
        session.close();
    }

    @Override
    public void update(T t) {
        Session session = this.getCurrentSession();
        session.beginTransaction();
        session.update(t);
        session.getTransaction().commit();
        session.close();
    }
    //除了根据id的查询
    //其他查询都返回一个list
    @Override
    public T selectById(Class clz, int id) {
        Session session = this.getCurrentSession();
        session.beginTransaction();
        T t = (T) session.get(clz, id);
        return t;
    }

    @Override
//    每页查10个数据
    public <T> List<T> select10(Class<T> t,int pageIndex) {
        Session session = this.getCurrentSession();
        session.beginTransaction();
        Query query = session.createQuery("from " + t.getSimpleName());
//        从什么地方开始查起
        query.setFirstResult((pageIndex-1)*10);
//        查10个
        query.setMaxResults(10);
        List<T> list = query.list();
        session.getTransaction().commit();
        session.close();
        return list;
    }
    //    每页查10个数据
    public <T> List<T> select102(Class<T> t,int pageIndex) {
        Session session = this.getCurrentSession();
        session.beginTransaction();
        Query query = session.createQuery("from " + t.getSimpleName()+" where room_id >1000");
//        从什么地方开始查起
        query.setFirstResult(10+(pageIndex-1)*10);
//        查10个
        query.setMaxResults(10);
        List<T> list = query.list();
        session.getTransaction().commit();
        session.close();
        return list;
    }
    @Override
    public <T> List<T> selectAll(Class<T> t) {
        Session session = this.getCurrentSession();
        session.beginTransaction();
        Query query = session.createQuery("from " + t.getSimpleName());
        List<T> list = query.list();
        session.getTransaction().commit();
        session.close();
        return list;
    }

    //登录名和密码存在即登录成功
    public List<UserEntity> selectUser(UserEntity userEntity) {
        Session session = this.getCurrentSession();
        session.beginTransaction();
        Criteria cri = session.createCriteria(UserEntity.class);
        cri.add(Restrictions.eq("username", userEntity.getUsername()));
        cri.add(Restrictions.eq("password", userEntity.getPassword()));
        List<UserEntity> list = cri.list();
        session.getTransaction().commit();
        session.close();
        return list;
    }

    //    根据word_room_id找10个数据
    public List<WordsEntity> select10words(WordsEntity wordsEntity) {
        Session session = this.getCurrentSession();
        session.beginTransaction();
        Criteria cri = session.createCriteria(wordsEntity.getClass());
//        第一次知道propertyName里面放的是Entity的属性名字
//        就是前面绑定的那个class
        cri.add(Restrictions.eq("wordsRoomId", wordsEntity.getWordsRoomId()));
        cri.setFirstResult(0);
        cri.setMaxResults(10);
        List<WordsEntity> list = cri.list();
        session.getTransaction().commit();
        session.close();
        return list;
    }

    public List<UserEntity> selectUsername(UserEntity userEntity) {
        Session session = this.getCurrentSession();
        session.beginTransaction();
        Criteria cri = session.createCriteria(userEntity.getClass());
        cri.add(Restrictions.eq("username", userEntity.getUsername()));
        List<UserEntity> list = cri.list();
        session.getTransaction().commit();
        session.close();
        return list;
    }
}

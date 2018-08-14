package com.dao;


import java.util.List;

public interface IDBDao<T> {
//只封装基本的操作
//条件查询等写在其他接口
//否则这里写了 那里又写一次 有什么逻辑？
    public void insert(T t);

    public void delete(T t);

    public void update(T t);

    public T selectById(Class clz, int id);

    public <T> List<T> selectAll(Class<T> t);

    public <T> List<T> select10(Class<T> t,int pageIndex);
}

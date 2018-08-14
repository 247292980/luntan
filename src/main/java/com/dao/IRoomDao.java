package com.dao;

import com.entity.RoomEntity;

import java.util.List;

/**
 * Created by LGP on 2017/3/18.
 */
public interface IRoomDao {
//    发表帖子
    public void insertRoom(RoomEntity roomEntity);
//查询10个帖子
    public List<RoomEntity> select10room(Class roomEntity,int pageIndex);
    public List<RoomEntity> select10room2(Class roomEntity,int pageIndex);

    //查询一个帖子的信息
    public RoomEntity selectRoom(Class roomEntity, int id);
}

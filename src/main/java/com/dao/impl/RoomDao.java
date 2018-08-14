package com.dao.impl;


import com.dao.IRoomDao;
import com.entity.RoomEntity;

import java.util.List;

/**
 * Created by LGP on 2017/3/18.
 */
public class RoomDao extends DBDao implements IRoomDao {
    @Override
    public void insertRoom(RoomEntity roomEntity) {
        super.insert(roomEntity);
    }

    @Override
    public List<RoomEntity> select10room(Class roomEntity,int pageIndex) {
        return (List<RoomEntity>)super.select10(roomEntity,pageIndex);
    }
    @Override
    public List<RoomEntity> select10room2(Class roomEntity,int pageIndex) {
        return (List<RoomEntity>)super.select102(roomEntity,pageIndex);
    }
    @Override
    public RoomEntity selectRoom(Class roomEntity, int id) {
        return (RoomEntity) super.selectById(roomEntity, id);
    }
}

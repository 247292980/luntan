package com.service.impl;

import com.dao.IRoomDao;
import com.entity.RoomEntity;
import com.service.IRoomService;
import com.util.Log4jUtil;

import java.util.List;

/**
 * Created by LGP on 2017/3/18.
 */
public class RoomService implements IRoomService {

    public void setRoomDao(IRoomDao roomDao) {
        this.roomDao = roomDao;
    }

    private IRoomDao roomDao;

    @Override
    public List<RoomEntity> showRoomMain(Class roomEntity,int pageIndex) {
        Log4jUtil.info("info", "查询10个房间");
        return roomDao.select10room(roomEntity, pageIndex);
    }
    @Override
    public List<RoomEntity> showRoomMain2(Class roomEntity,int pageIndex) {
        Log4jUtil.info("info", "查询10个房间");
        return roomDao.select10room2(roomEntity, pageIndex);
    }
    @Override
    public void writeRoom(RoomEntity roomEntity) {
        Log4jUtil.info("info", "插入一个房间");
        roomDao.insertRoom(roomEntity);
    }
    @Override
    public RoomEntity openRoom(Class roomEntity, int id) {
        Log4jUtil.info("info", "查询1个房间");
        return  roomDao.selectRoom(roomEntity,id);
    }
}

package com.service;

import com.entity.RoomEntity;

import java.util.List;

/**
 * Created by LGP on 2017/3/18.
 */
public interface IRoomService {
//    显示社区管理页面
    public List<RoomEntity> showRoomMain(Class roomEntity,int pageIndex);
//    显示文章管理页面
    public List<RoomEntity> showRoomMain2(Class roomEntity,int pageIndex);
//    新建社区或文章
    public void writeRoom(RoomEntity roomEntity);
//    打开一个社区或文章
    public RoomEntity openRoom(Class roomEntity, int id);
}

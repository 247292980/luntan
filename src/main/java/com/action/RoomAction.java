package com.action;

import com.entity.RoomEntity;
import com.entity.UserEntity;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import com.service.IRoomService;
import com.util.FormatUtil;
import com.util.Log4jUtil;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import java.util.List;
import java.util.Map;

/**
 * Created by LGP on 2017/3/18.
 */
public class RoomAction extends ActionSupport implements ModelDriven<RoomEntity>, RequestAware, SessionAware {
    private Map<String, Object> request;
    private Map<String, Object> session;
    private RoomEntity roomEntity;
    private IRoomService roomService;//model
    private String message;//用于log
    private int pageIndex;//用于分页

    @Override
    public RoomEntity getModel() {
        if (roomEntity == null) {
            roomEntity = new RoomEntity();
        }
        return roomEntity;
    }
    public int getPageIndex() {
        return pageIndex;
    }

    public void setPageIndex(int pageIndex) {
        this.pageIndex = pageIndex;
    }
    @Override
    public void setRequest(Map<String, Object> map) {
        this.request = map;
    }

    @Override
    public void setSession(Map<String, Object> map) {
        this.session = map;
    }

    public RoomEntity getRoomEntity() {
        return roomEntity;
    }

    public void setRoomEntity(RoomEntity roomEntity) {
        this.roomEntity = roomEntity;
    }

    public void setRoomService(IRoomService roomService) {
        this.roomService = roomService;
    }

    public String showRoomMain() {
        message = "显示主界面的房间";
        Log4jUtil.info("info", message);
//     第一次的时候赋初值
        if (pageIndex ==0) {
            setPageIndex(1);
        }
        List<RoomEntity> roomEntityList = roomService.showRoomMain(roomEntity.getClass(), pageIndex);
        if (roomEntityList.size()==0){
            message = "已查找完全部房间";
            Log4jUtil.info("info", message);
            request.put("message", message);

            pageIndex=pageIndex-1;
            roomEntityList = roomService.showRoomMain(roomEntity.getClass(), pageIndex);
        }
        //成功 现在要将10个数据发到前端
        request.put("roomlist", roomEntityList);
        request.put("pageIndex", getPageIndex());
        return SUCCESS;
    }
    public String showRoomMain2() {
        message = "显示主界面的房间";
        Log4jUtil.info("info", message);
//     第一次的时候赋初值
        if (pageIndex ==0) {
            setPageIndex(1);
        }
        List<RoomEntity> roomEntityList = roomService.showRoomMain2(roomEntity.getClass(), pageIndex);
        if (roomEntityList.size()==0){
            message = "已查找完全部房间";
            Log4jUtil.info("info", message);
            request.put("message", message);

            pageIndex=pageIndex-1;
            roomEntityList = roomService.showRoomMain2(roomEntity.getClass(), pageIndex);
        }
        //成功 现在要将10个数据发到前端
        request.put("roomlist", roomEntityList);
        request.put("pageIndex", getPageIndex());
        return SUCCESS;
    }
    public String writeRoom() {
        message = "写房间";
        Log4jUtil.info("info", message);

        if (FormatUtil.isEmptyRoom(roomEntity)) {
            message = "房间主题或者内容为空";
            Log4jUtil.info("info", message);
            return ERROR;
        }

        UserEntity userEntity = (UserEntity) session.get("userEntity");
        roomEntity.setRoomUserId(userEntity.getUserId());
        System.out.println(roomEntity.getRoomTitle());
        System.out.println(roomEntity.getRoomWords());
        roomService.writeRoom(roomEntity);
        return SUCCESS;
    }


    public String openRoom() {
//        获取地址栏传参数的方法 地址栏参数在request里面
        message = "打开一个房间";
        Log4jUtil.info("info", message);

        roomEntity.setRoomId((Integer) request.get("roomId"));
        setRoomEntity(roomService.openRoom(roomEntity.getClass(), roomEntity.getRoomId()));
        session.put("roomEntity", roomEntity);
        return SUCCESS;
    }
}

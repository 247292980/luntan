package com.action;

import com.entity.RoomEntity;
import com.entity.UserEntity;
import com.entity.WordsEntity;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.service.IWordsService;
import com.util.Log4jUtil;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import java.util.List;
import java.util.Map;

/**
 * Created by LGP on 2017/7/7.
 */
public class WordsAction extends ActionSupport implements ModelDriven<WordsEntity>, RequestAware, SessionAware {
    private Map<String, Object> request;
    private Map<String, Object> session;
    private WordsEntity wordsEntity;
    private IWordsService wordsService;// model
    private String message;//用于log

    @Override
    public WordsEntity getModel() {
        if (wordsEntity == null) {
            wordsEntity = new WordsEntity();
        }
        return wordsEntity;
    }

    @Override
    public void setRequest(Map<String, Object> map) {
        this.request = map;
    }

    @Override
    public void setSession(Map<String, Object> map) {
        this.session = map;
    }

    public WordsEntity getWordsEntity() {
        return wordsEntity;
    }

    public void setWordsEntity(WordsEntity wordsEntity) {
        this.wordsEntity = wordsEntity;
    }

    public void setWordsService(IWordsService wordsService) {
        this.wordsService = wordsService;
    }

    public String showWordsRoom() {
        message = "显示房间回复";
        Log4jUtil.info("info", message);

        RoomEntity roomEntity = (RoomEntity) session.get("roomEntity");
        wordsEntity.setWordsRoomId(roomEntity.getRoomId());
        List<WordsEntity> wordsEntityList = wordsService.showWordsRoom(wordsEntity);

        //成功 现在要将10个数据发到前端
        request.put("wordslist", wordsEntityList);
        return SUCCESS;
    }

    public String writeWords() {
        message = "写回复";
        Log4jUtil.info("info", message);

        if ("".equals(wordsEntity.getWords().trim())){
            message = "空回复错误";
            Log4jUtil.info("info", message);
            return ERROR;
        }

        UserEntity userEntity = (UserEntity) session.get("userEntity");
        wordsEntity.setWordsUserId(userEntity.getUserId());
        RoomEntity roomEntity = (RoomEntity) session.get("roomEntity");
        wordsEntity.setWordsRoomId(roomEntity.getRoomId());

        wordsService.writeWords(wordsEntity);
        request.put("roomId", wordsEntity.getWordsRoomId());
        return SUCCESS;
    }
}

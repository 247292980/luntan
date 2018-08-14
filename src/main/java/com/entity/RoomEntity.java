package com.entity;

import javax.persistence.*;

/**
 * Created by LGP on 2017/7/6.
 */
@Entity
@Table(name = "room", schema = "luntan", catalog = "")
public class RoomEntity extends BaseEntity{
    private int roomId;
    private int roomUserId;
    private String roomWords;
    private String roomTitle;

    public void setRoomUserId(Integer roomUserId) {
        this.roomUserId = roomUserId;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "room_id", nullable = false)
    public int getRoomId() {
        return roomId;
    }

    public void setRoomId(int roomId) {
        this.roomId = roomId;
    }

    @Basic
    @Column(name = "room_user_id", nullable = true)
    public int getRoomUserId() {
        return roomUserId;
    }

    public void setRoomUserId(int roomUserId) {
        this.roomUserId = roomUserId;
    }

    @Basic
    @Column(name = "room_words", nullable = true, length = 255)
    public String getRoomWords() {
        return roomWords;
    }

    public void setRoomWords(String roomWords) {
        this.roomWords = roomWords;
    }

    @Basic
    @Column(name = "room_title", nullable = true, length = 255)
    public String getRoomTitle() {
        return roomTitle;
    }

    public void setRoomTitle(String roomTitle) {
        this.roomTitle = roomTitle;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        RoomEntity that = (RoomEntity) o;

        if (roomId != that.roomId) return false;
        if (roomUserId != that.roomUserId) return false;
        if (roomWords != null ? !roomWords.equals(that.roomWords) : that.roomWords != null) return false;
        if (roomTitle != null ? !roomTitle.equals(that.roomTitle) : that.roomTitle != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = roomId;
        result = 31 * result + roomUserId;
        result = 31 * result + (roomWords != null ? roomWords.hashCode() : 0);
        result = 31 * result + (roomTitle != null ? roomTitle.hashCode() : 0);
        return result;
    }


}

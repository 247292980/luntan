package com.entity;

import javax.persistence.*;

/**
 * Created by LGP on 2017/7/6.
 */
@Entity
@Table(name = "words", schema = "luntan", catalog = "")
public class WordsEntity extends BaseEntity{
    private int wordId;
    private int wordsUserId;
    private int wordsRoomId;
    private String words;

    public void setWordsUserId(Integer wordsUserId) {
        this.wordsUserId = wordsUserId;
    }

    public void setWordsRoomId(Integer wordsRoomId) {
        this.wordsRoomId = wordsRoomId;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "word_id", nullable = false)
    public int getWordId() {
        return wordId;
    }

    public void setWordId(int wordId) {
        this.wordId = wordId;
    }

    @Basic
    @Column(name = "words_user_id", nullable = true)
    public int getWordsUserId() {
        return wordsUserId;
    }

    public void setWordsUserId(int wordsUserId) {
        this.wordsUserId = wordsUserId;
    }

    @Basic
    @Column(name = "words_room_id", nullable = true)
    public int getWordsRoomId() {
        return wordsRoomId;
    }

    public void setWordsRoomId(int wordsRoomId) {
        this.wordsRoomId = wordsRoomId;
    }

    @Basic
    @Column(name = "words", nullable = true, length = 255)
    public String getWords() {
        return words;
    }

    public void setWords(String words) {
        this.words = words;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        WordsEntity that = (WordsEntity) o;

        if (wordId != that.wordId) return false;
        if (wordsUserId != that.wordsUserId) return false;
        if (wordsRoomId != that.wordsRoomId) return false;
        if (words != null ? !words.equals(that.words) : that.words != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = wordId;
        result = 31 * result + wordsUserId;
        result = 31 * result + wordsRoomId;
        result = 31 * result + (words != null ? words.hashCode() : 0);
        return result;
    }


}

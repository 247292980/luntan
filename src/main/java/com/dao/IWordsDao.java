package com.dao;

import com.entity.WordsEntity;

import java.util.List;

/**
 * Created by LGP on 2017/7/7.
 */
public interface IWordsDao {
    //    根据word_room_id找10个数据
    public List<WordsEntity> select10words(WordsEntity wordsEntity);

    //    回复帖子
    public void insertWords(WordsEntity wordsEntity);
}

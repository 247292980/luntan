package com.service;

import com.entity.WordsEntity;

import java.util.List;

/**
 * Created by LGP on 2017/7/7.
 */
public interface IWordsService {
//    显示回复
    public List<WordsEntity> showWordsRoom(WordsEntity wordsEntity);
//    回复信息
    public void writeWords(WordsEntity wordsEntity);
}

package com.dao.impl;

import com.dao.IWordsDao;
import com.entity.WordsEntity;

import java.util.List;

/**
 * Created by LGP on 2017/7/7.
 */
public class WordsDao extends DBDao implements IWordsDao {
    @Override
    public List<WordsEntity> select10words(WordsEntity wordsEntity) {
        return super.select10words(wordsEntity);
    }

    @Override
    public void insertWords(WordsEntity wordsEntity) {
        super.insert(wordsEntity);
    }
}

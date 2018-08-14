package com.service.impl;

import com.dao.IWordsDao;
import com.entity.WordsEntity;
import com.service.IWordsService;
import com.util.Log4jUtil;

import java.util.List;

/**
 * Created by LGP on 2017/7/7.
 */
public class WordsService implements IWordsService {
    public void setWordsDao(IWordsDao wordsDao) {
        this.wordsDao = wordsDao;
    }

    private IWordsDao wordsDao;

    @Override
    public List<WordsEntity> showWordsRoom(WordsEntity wordsEntity) {
        Log4jUtil.info("info", "查询10个回复");
        return wordsDao.select10words(wordsEntity);
    }

    @Override
    public void writeWords(WordsEntity wordsEntity) {
        Log4jUtil.info("info", "插入回复");
        wordsDao.insertWords(wordsEntity);
    }
}

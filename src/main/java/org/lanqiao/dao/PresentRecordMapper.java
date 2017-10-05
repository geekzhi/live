package org.lanqiao.dao;

import org.lanqiao.entity.PresentRecord;

public interface PresentRecordMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(PresentRecord record);

    int insertSelective(PresentRecord record);

    PresentRecord selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(PresentRecord record);

    int updateByPrimaryKey(PresentRecord record);
}
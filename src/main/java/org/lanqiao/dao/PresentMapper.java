package org.lanqiao.dao;

import org.lanqiao.entity.Present;

public interface PresentMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Present record);

    int insertSelective(Present record);

    Present selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Present record);

    int updateByPrimaryKey(Present record);
}
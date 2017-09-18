package org.lanqiao.dao;

import org.lanqiao.entity.Recourse;

public interface RecourseMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Recourse record);

    int insertSelective(Recourse record);

    Recourse selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Recourse record);

    int updateByPrimaryKey(Recourse record);
}
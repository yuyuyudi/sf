package com.shangfang.dao;

import com.shangfang.domain.Manager;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ManagerDao {
    List<Manager> selectManager(@Param("name") String name, @Param("password") String password);
}

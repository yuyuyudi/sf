package com.shangfang.dao;

import com.shangfang.domain.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserDao {
    int insertuser(User user);
    List<User> selectUser(@Param("telephone") String telephone, @Param("password") String password);
}

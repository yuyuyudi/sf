package com.shangfang.service;

import com.shangfang.domain.User;

import java.util.List;

public interface UserService {
    int addUser(User user);
    List<User> findUser(String telephone,String password);
}

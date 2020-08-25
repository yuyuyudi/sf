package com.shangfang.service.impl;

import com.shangfang.dao.UserDao;
import com.shangfang.domain.User;
import com.shangfang.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Resource
    private UserDao userDao;

    @Override
    public int addUser(User user) {
        int num = userDao.insertuser(user);
        return num;
    }

    @Override
    public List<User> findUser(String telephone,String password) {

        return userDao.selectUser(telephone, password);
    }
}

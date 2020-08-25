package com.shangfang.service.impl;

import com.shangfang.dao.ManagerDao;
import com.shangfang.domain.Manager;
import com.shangfang.service.ManagerService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class ManagerServiceImpl implements ManagerService {

    @Resource
    private ManagerDao managerDao;

    @Override
    public List<Manager> managerLogin(String name, String password) {
        List<Manager> managers = managerDao.selectManager(name,password);
        return managers;
    }
}

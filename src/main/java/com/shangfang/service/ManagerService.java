package com.shangfang.service;

import com.shangfang.domain.Manager;

import java.util.List;

public interface ManagerService {
    List<Manager> managerLogin(String name, String password);
}

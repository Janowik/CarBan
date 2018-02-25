package com.bellcode.Service;

import com.bellcode.Model.User;

import java.util.List;

public interface UserService {
     User findUserByEmail(String email);
     void saveUser(User user);
     List<User> findAll();
     User findUserById(int id);
}

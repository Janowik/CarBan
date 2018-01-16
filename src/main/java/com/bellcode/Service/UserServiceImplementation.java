package com.bellcode.Service;

import com.bellcode.Model.Role;
import com.bellcode.Model.User;
import com.bellcode.Repository.RoleRepository;
import com.bellcode.Repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;

@Service("userService")
public class UserServiceImplementation implements UserService {
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private RoleRepository roleRepository;
    @Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;

    @Override
    public User findUserByEmail(String email) {
        return userRepository.findByEmail(email);
    }

    @Override
    public void saveUser(User user) {
        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
        Role userRole = roleRepository.findByRole("ADMIN");
        user.setRoleSet(new HashSet<Role>(Arrays.asList(userRole)));
            userRepository.save(user);
    }

    @Override
    public List<User> findAll() {
        List<User> userList = null;
        userList = userRepository.findAll();
        return  userList;
    }

    @Override
    public User findUserById(int id) {
        return userRepository.findUserById(id);
    }
}

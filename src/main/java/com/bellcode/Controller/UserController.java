package com.bellcode.Controller;

import com.bellcode.Model.Comment;
import com.bellcode.Model.User;
import com.bellcode.Service.UserService;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.jws.soap.SOAPBinding;
import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

@Controller
public class UserController {

    @Autowired
    UserService userService;

    @RequestMapping(value = "/user")
    public String toUserPage(Model model, Principal principal) {
        String messages = principal.getName();
        model.addAttribute(new Comment());
        return "user";
    }

    @RequestMapping("user/all")
    public @ResponseBody
    List<User> findAll() {
        List<User> users = userService.findAll();
        return users;
    }
}

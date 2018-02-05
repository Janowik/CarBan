package com.bellcode.Controller;

import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {

    @RequestMapping(value = "/user")
    public String toUserPage(Model model){
        model.addAttribute("message", "Tekst");
        return "user";
    }
}

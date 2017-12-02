package com.bellcode.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

@Controller
public class LoginController {
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String loginPage(ModelMap model){
        //model.put("message",user);
        return "login";
    }
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String toUserPage(ModelMap modelMap){
        return "user";
        

    }
}
package com.bellcode.Controller;

import com.bellcode.Model.Comment;
import com.bellcode.Model.User;
import com.bellcode.Service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.ModelAndView;

import javax.jws.WebParam;
import javax.validation.Valid;

@Controller
public class RegistrationController {

    @Autowired
    private UserService userService;

    @GetMapping(value = "/registration")
    public String showRegistrationForm(User user, Model model){
        model.addAttribute(new User());
        return "registration";
    }

    @RequestMapping(value = "/registration", method = RequestMethod.POST)
    public String registerNewUser(@Valid @ModelAttribute("user") User user, BindingResult result, Model model){
        User userExist = userService.findUserByEmail(user.getEmail());
        if (userExist != null){
            model.addAttribute("existUser", "This e-mail are registered in database");
            return "login";
        }
        if(result.hasErrors()){
            return "index";
        }else{
            userService.saveUser(user);
        }
        return "login";
    }
}

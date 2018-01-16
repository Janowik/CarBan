package com.bellcode.Controller;

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
    public String showRegistrationForm(Model model){
        User user = new User();
        model.addAttribute("user", new User());
        return "registration";
    }

    @RequestMapping(value = "/registration", method = RequestMethod.POST)
    public String registerNewUser(@Valid User user, BindingResult result, Model model){

        if(result.hasErrors()){
            return "registration";
        }else {
            userService.saveUser(user);
            model.addAttribute("message","Rejestracja OK");
            model.addAttribute("user",new User());
        }
        return "registration";
        }
}

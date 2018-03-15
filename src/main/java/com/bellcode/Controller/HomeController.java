package com.bellcode.Controller;

import com.bellcode.Model.Comment;
import com.bellcode.Repository.CommentRepository;
import com.bellcode.Service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.validation.Valid;

@Controller
public class HomeController {

    @RequestMapping("/")
    public String toHomePage(Model model) {
        model.addAttribute(new Comment());
        model.addAttribute("userNotLogin");
        return "index";
    }

    @RequestMapping("/przyklad")
    public String toPrzykladPage(Model model) {
        model.addAttribute(new Comment());
        return "przyklad";
    }


}

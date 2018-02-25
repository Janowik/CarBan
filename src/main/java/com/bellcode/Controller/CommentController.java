package com.bellcode.Controller;

import com.bellcode.Model.Comment;
import com.bellcode.Repository.CommentRepository;
import com.bellcode.Service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

@Controller
public class CommentController {

    @Autowired
    public CommentService commentService;



    @GetMapping(value = "/addcomment")
    public String toCommentPage(Model model){
        model.addAttribute(new Comment());
        return "addcomment";
    }

    @PostMapping(value = "/addcomment")
    public String addNewComment(@Valid @ModelAttribute("comment" )Comment comment, BindingResult bindingResult){
        if(bindingResult.hasErrors()){
            return "addcomment";
        }else{
            commentService.saveComment(comment);
            return "user";
        }
    }
}

package com.bellcode.Controller;

import com.bellcode.Model.Comment;
import com.bellcode.Repository.CommentRepository;
import com.bellcode.Service.CommentService;
import com.bellcode.Service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Controller
public class SearchController {

    private final CommentRepository commentRepository;

    private final CommentService commentService;

    @Autowired
    public SearchController(CommentRepository commentRepository, CommentService commentService) {
        this.commentRepository = commentRepository;
        this.commentService = commentService;
    }

    @RequestMapping("/search/findall")
    public @ResponseBody
    List<Comment> myComments() {
        return commentService.findAll();
    }

    @RequestMapping("/search/{vinNumber}")
    public @ResponseBody
    List<Comment> RESTsearchVinNumber(@PathVariable String vinNumber) {
        return commentRepository.findCommentByVin_number(vinNumber);
    }

    @RequestMapping(value = "/search", method = RequestMethod.POST)
    public String searchVinNumber(@ModelAttribute Comment comment, Model model) {
        List<Comment> comments;
        comments = commentRepository.findCommentByVin_number(comment.getVin_number());
        if (comments.isEmpty()){
            model.addAttribute("emptyListVin", "we couldn't find any matches.");
        } else {
            model.addAttribute("listVin", comments);
        }
        return "index";
    }
}
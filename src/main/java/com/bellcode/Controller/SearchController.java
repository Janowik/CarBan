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

    @Autowired
    CommentRepository commentRepository;

    @Autowired
    CommentService commentService;

    @RequestMapping("/search/findall")
    public @ResponseBody
    List<Comment> myComments() {
        List<Comment> comments = commentService.findAll();
        return comments;
    }

    @RequestMapping("/search/{vinNumber}")
    public @ResponseBody
    List<Comment> RESTsearchVinNumber(@PathVariable String vinNumber) {
        List<Comment> comments = commentRepository.findCommentByVin_number(vinNumber);
        return comments;
    }

    @RequestMapping(value = "/search", method = RequestMethod.POST)
    public String searchVinNumber(@ModelAttribute Comment comment, Model model) {
        List<Comment> comments = new ArrayList<>();
        comments = commentRepository.findCommentByVin_number(comment.getVin_number());
        if (comments.isEmpty()){
            model.addAttribute("emptyListVin", "we couldn't find any matches.");
        } else {
            model.addAttribute("listVin", comments);
        }
        return "index";
    }
}
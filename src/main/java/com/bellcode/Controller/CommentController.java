package com.bellcode.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class CommentController {
    @RequestMapping(value = "/comment/post/{vin_number}", method = RequestMethod.POST)
    public String saveComment(){
        return null;
    }
}

package com.bellcode.Service;

import com.bellcode.Model.Comment;
import com.bellcode.Model.User;

import java.security.Principal;
import java.util.List;

public interface CommentService {
    void saveComment(Comment comment);
    List<Comment> findAll();

}

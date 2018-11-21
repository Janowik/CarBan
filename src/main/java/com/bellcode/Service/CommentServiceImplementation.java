package com.bellcode.Service;

import com.bellcode.Model.Comment;
import com.bellcode.Model.User;
import com.bellcode.Repository.CommentRepository;
import com.bellcode.Repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import java.security.Principal;
import java.util.*;

@Service("commentService")
public class CommentServiceImplementation implements CommentService {

    private final CommentRepository commentRepository;

    private final UserRepository userRepository;

    @Autowired
    public CommentServiceImplementation(CommentRepository commentRepository, UserRepository userRepository) {
        this.commentRepository = commentRepository;
        this.userRepository = userRepository;
    }

    @Override
    public void saveComment(Comment comment) {
        Principal principal = SecurityContextHolder.getContext().getAuthentication();
        String loginUserEmail = principal.getName();

        comment.setVin_number(comment.getVin_number());
        comment.setText(comment.getText());

        User user = userRepository.findByEmail(loginUserEmail);
        comment.setUsers(new HashSet<>(Collections.singletonList(user)));

        commentRepository.save(comment);
    }

    @Override
    public List<Comment> findAll() {
        return new ArrayList<>(commentRepository.findAll());
    }

}

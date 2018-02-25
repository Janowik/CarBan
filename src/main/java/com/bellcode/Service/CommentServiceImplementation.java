package com.bellcode.Service;

import com.bellcode.Model.Comment;
import com.bellcode.Model.User;
import com.bellcode.Repository.CommentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Service("commentService")
public class CommentServiceImplementation implements CommentService {

    @Autowired
    CommentRepository commentRepository;

    @Autowired
    CommentService commentService;

    @Override
    public void saveComment(Comment comment) {
        comment.setVin_number(comment.getVin_number());
        comment.setText(comment.getText());

        Set<Comment> comments = new HashSet<>();
        comments.add(comment);

        User user = new User("jacek.nowak.jn@gmail.com","$2a$10$tNP0o0TH10taiveVCCWlOeimpirlC.DusgT29PvyzLv1dz06qqKbG");

        Set<User> users = new HashSet<>();
        //masz dodać użytkownika
        users.add(user);

        comment.setUsers(users);

        commentRepository.save(comments);
    }

    @Override
    public List<Comment> findAll() {
        List<Comment> comments = new ArrayList<>();
        commentRepository.findAll().forEach(comments::add);
        return comments;
    }

}

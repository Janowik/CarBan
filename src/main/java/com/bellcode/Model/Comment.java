package com.bellcode.Model;

import javax.persistence.*;
import java.util.Set;

@Entity
@Table(name = "comment")
public class Comment {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "comment_id")
    private Long id;

    @Column(name = "vin_number")
    private Long vin_number;

    @Column(name = "text")
    private String text;

    @ManyToMany(cascade = CascadeType.ALL)
    @JoinTable(name = "user_comment", joinColumns = @JoinColumn(name = "user_id"), inverseJoinColumns = @JoinColumn(name = "comment_id"))
    private Set<Comment> comment;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public Long getVin_number() {
        return vin_number;
    }

    public void setVin_number(Long vin_number) {
        this.vin_number = vin_number;
    }

    public Set<Comment> getComment() {
        return comment;
    }

    public void setComment(Set<Comment> comment) {
        this.comment = comment;
    }
}

package com.example.sweater.domain;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Getter
@Setter
@Entity
public class Message {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private String text;
    private String tag;
    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "user_id")
    private User author;
    private String filename;

    public Message() {
    }

    public Message(String text, String tag, User user){
        this.author = user;
        this.text = text;
        this.tag = tag;
    }

    public String getAuthorName(){
        return author != null ? author.getUsername() : "<noname>";
    }

//    public User getAuthor() {
//        if (this.author != null){
//            return author;
//        } else {
//            return new User();
//        }
//    }
}

package com.bellcode;

import com.bellcode.Model.Comment;
import com.bellcode.Model.User;
import com.bellcode.Repository.CommentRepository;
import com.bellcode.Repository.UserRepository;
import com.bellcode.Service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.AutoConfigureBefore;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.security.SecurityAutoConfiguration;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

import javax.annotation.PostConstruct;
import javax.jws.soap.SOAPBinding;
import java.util.*;

@SpringBootApplication
@Configuration
public class CarbanApplication implements CommandLineRunner {

    public static void main(String[] args) {
        SpringApplication.run(CarbanApplication.class, args);
    }
    @Override
    public void run(String... args) throws Exception {
    }
}
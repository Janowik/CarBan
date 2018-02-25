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

import javax.jws.soap.SOAPBinding;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@SpringBootApplication
@ComponentScan("com.bellcode")
@EnableAutoConfiguration
@Configuration
public class CarbanApplication implements CommandLineRunner{

	@Autowired
	private CommentRepository commentRepository;

	@Autowired
	private UserRepository userRepository;

	public static void main(String[] args) {
		SpringApplication.run(CarbanApplication.class, args);
	}


	@Override
	public void run(String... args) throws Exception {
		User user = new User("jacek.nowak.jn@gmail.com","$2a$10$tNP0o0TH10taiveVCCWlOeimpirlC.DusgT29PvyzLv1dz06qqKbG");
		Comment comment = new Comment("11000000000000000","jakas lipa");

		Set<Comment> comments = new HashSet<>();
		comments.add(comment);

        User user2 = userRepository.findByEmail("druk.janowik@gmail.com");


        Set<User> users = new HashSet<>();
		users.add(user);


		comment.setUsers(users);
		//commentRepository.save(comments);


		System.out.println("Id User= " + user.getId());
	}
}
package dev.reso.spring_jpa_hibernate.resources;


import dev.reso.spring_jpa_hibernate.entities.User;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/users")
public class UserResource {

    @GetMapping
    public ResponseEntity<User> findAll(){
        User u= new User(1L,"Diego","diego@email.com", "99999",  "3214");

        return ResponseEntity.ok().body(u);
    }
}

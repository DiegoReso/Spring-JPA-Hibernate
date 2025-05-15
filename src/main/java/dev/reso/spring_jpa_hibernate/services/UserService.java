package dev.reso.spring_jpa_hibernate.services;


import dev.reso.spring_jpa_hibernate.entities.User;
import dev.reso.spring_jpa_hibernate.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class UserService {

    @Autowired
    private UserRepository repository;


    public List<User> findAll(){
        List<User> list = repository.findAll();
        return list;
    }

    public User findById(Long id){
        Optional<User> user = repository.findById(id);
        return user.orElse(null);
    }

    public User insertUser(User user){
         return repository.save(user);
    }

    public void deleteUser(Long id){
        repository.deleteById(id);
    }

    public User updateUser(Long id, User user){
        User entity = repository.getReferenceById(id);
        updateData(entity, user);
        return repository.save(entity);
    }

    private void updateData(User entity, User user) {
        entity.setEmail(user.getEmail());
        entity.setName(user.getName());
        entity.setPhone(user.getPhone());
    }

}

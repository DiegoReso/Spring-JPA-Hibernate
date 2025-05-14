package dev.reso.spring_jpa_hibernate.services;


import dev.reso.spring_jpa_hibernate.entities.Category;
import dev.reso.spring_jpa_hibernate.repositories.CategoryRepository;
import dev.reso.spring_jpa_hibernate.repositories.OrderRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class CategoryService {

    @Autowired
    private CategoryRepository repository;

    public List<Category> findAll(){
        List<Category> list = repository.findAll();
        return list;
    }

    public Category findById(Long id){
        Optional<Category> user = repository.findById(id);
        return user.orElse(null);
    }


}

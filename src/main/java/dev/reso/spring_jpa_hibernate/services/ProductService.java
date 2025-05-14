package dev.reso.spring_jpa_hibernate.services;


import dev.reso.spring_jpa_hibernate.entities.Product;
import dev.reso.spring_jpa_hibernate.repositories.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ProductService {

    @Autowired
    private ProductRepository repository;

    public List<Product> findAll(){
        List<Product> list = repository.findAll();
        return list;
    }

    public Product findById(Long id){
        Optional<Product> user = repository.findById(id);
        return user.orElse(null);
    }


}

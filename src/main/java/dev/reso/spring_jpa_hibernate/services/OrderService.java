package dev.reso.spring_jpa_hibernate.services;


import dev.reso.spring_jpa_hibernate.entities.Order;
import dev.reso.spring_jpa_hibernate.repositories.OrderRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class OrderService {

    @Autowired
    private OrderRepository repository;

    public List<Order> findAll(){
        List<Order> list = repository.findAll();
        return list;
    }

    public Order findById(Long id){
        Optional<Order> user = repository.findById(id);
        return user.orElse(null);
    }


}

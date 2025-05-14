package dev.reso.spring_jpa_hibernate.repositories;

import dev.reso.spring_jpa_hibernate.entities.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ProductRepository extends JpaRepository<Product,Long> {
}

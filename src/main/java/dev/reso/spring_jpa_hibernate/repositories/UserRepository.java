package dev.reso.spring_jpa_hibernate.repositories;

import dev.reso.spring_jpa_hibernate.entities.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User,Long> {
}

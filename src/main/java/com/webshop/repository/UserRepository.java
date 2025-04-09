package com.webshop.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.webshop.domain.User;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {
    User save(User user);

    List<User> findByAddress(String address);

    List<User> findAll();
    
    User findById(long id);

    void deleteById(long id);

    boolean existsByEmail(String email);
}

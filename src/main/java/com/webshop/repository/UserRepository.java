package com.webshop.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.webshop.domain.UserModel;

@Repository
public interface UserRepository extends JpaRepository<UserModel, Long> {
    UserModel save(UserModel user);

    List<UserModel> findByAddress(String address);

    List<UserModel> findAll();
    
    UserModel findById(long id);
}

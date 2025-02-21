package com.webshop.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.webshop.domain.UserModel;

@Repository
public interface UserRepository extends CrudRepository<UserModel, Long> {
    UserModel save(UserModel user);
    
    
}

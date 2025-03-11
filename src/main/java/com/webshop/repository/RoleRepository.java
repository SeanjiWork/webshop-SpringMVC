package com.webshop.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.webshop.domain.Role;

public interface RoleRepository extends JpaRepository<Role, Long> {
    Role findByName(String name);
}

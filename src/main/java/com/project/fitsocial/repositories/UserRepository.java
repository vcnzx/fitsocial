package com.project.fitsocial.repositories;

import java.util.Optional;

import org.springframework.data.repository.CrudRepository;

import com.project.fitsocial.models.User;


public interface UserRepository extends CrudRepository<User, Long> {
    Optional<User> findByEmail(String email);
}
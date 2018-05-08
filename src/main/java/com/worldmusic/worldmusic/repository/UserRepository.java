package com.worldmusic.worldmusic.repository;

import com.worldmusic.worldmusic.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Integer> {
    User findOneByEmail(String email);
}

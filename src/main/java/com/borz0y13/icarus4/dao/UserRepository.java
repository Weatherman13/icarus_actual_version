package com.borz0y13.icarus4.dao;

import com.borz0y13.icarus4.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface UserRepository extends JpaRepository<User,Integer> {
    User findByNickname(String nickname);

    Optional<User> findByEmail(String email);
}

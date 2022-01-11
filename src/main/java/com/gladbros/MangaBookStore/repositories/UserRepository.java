package com.gladbros.MangaBookStore.repositories;

import com.gladbros.MangaBookStore.models.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {
    User findByEmail(String email);
}

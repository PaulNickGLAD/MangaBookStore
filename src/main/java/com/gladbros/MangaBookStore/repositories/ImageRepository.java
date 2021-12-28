package com.gladbros.MangaBookStore.repositories;

import com.gladbros.MangaBookStore.models.Image;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ImageRepository extends JpaRepository<Image, Long> {
}

package com.worldmusic.worldmusic.repository;

import com.worldmusic.worldmusic.model.News;
import org.springframework.data.jpa.repository.JpaRepository;

public interface NewsRepository extends JpaRepository<News,Integer> {
}

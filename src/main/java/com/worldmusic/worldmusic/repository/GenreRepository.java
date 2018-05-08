package com.worldmusic.worldmusic.repository;

import com.worldmusic.worldmusic.model.Genre;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface GenreRepository extends JpaRepository<Genre, Integer> {
    Genre findGenreByNameContains(String name);

    List<Genre> findGenresByNameContains(String name);
}

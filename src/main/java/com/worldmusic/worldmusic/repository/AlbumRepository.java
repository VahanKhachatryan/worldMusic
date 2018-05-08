package com.worldmusic.worldmusic.repository;

import com.worldmusic.worldmusic.model.Album;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface AlbumRepository extends JpaRepository<Album, Integer> {

    Album findAlbumByNameContains(String name);

    List<Album> findAlbumsByNameContains(String name);
}

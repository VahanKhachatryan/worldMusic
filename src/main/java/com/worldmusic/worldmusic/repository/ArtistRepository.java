package com.worldmusic.worldmusic.repository;

import com.worldmusic.worldmusic.model.Artist;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ArtistRepository extends JpaRepository<Artist, Integer> {

    Artist findArtistByNameContainsOrSurnameContains(String name, String surname);

    List<Artist> findArtistsByNameContainsOrSurnameContains(String name, String surname);

}

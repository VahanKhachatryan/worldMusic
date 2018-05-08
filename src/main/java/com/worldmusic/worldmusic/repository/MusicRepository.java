package com.worldmusic.worldmusic.repository;

import com.worldmusic.worldmusic.model.Album;
import com.worldmusic.worldmusic.model.Artist;
import com.worldmusic.worldmusic.model.Genre;
import com.worldmusic.worldmusic.model.Music;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface MusicRepository extends JpaRepository<Music, Integer> {

    List<Music> findAllByGenresContaining(Genre genre);

    List<Music> findAllByAlbumId(int id);

    @Query(value = "select * from music order by `music` limit 5", nativeQuery = true)
    List<Music> orderByMusic();

    List<Music> findMusicsByNameContains(String name);
}

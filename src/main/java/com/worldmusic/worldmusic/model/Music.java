package com.worldmusic.worldmusic.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.LinkedList;
import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor

@Entity
@Table(name = "music")
public class Music {

    @Id
    @GeneratedValue
    @Column
    private int id;
    @Column
    private String music;
    @Column
    private String name;
    @Column
    private String description;
    @Column
    private String picture;

    @ManyToMany(cascade = CascadeType.MERGE)
    @JoinTable(
            name = "music_artist",
            joinColumns = {@JoinColumn(name = "music_id")},
            inverseJoinColumns = {@JoinColumn(name = "artist_id")})
    List<Artist> artists = new LinkedList<>();

    @ManyToOne
    private Album album;

    @ManyToMany(cascade = CascadeType.MERGE)
    @JoinTable(
            name = "music_genre",
            joinColumns = {@JoinColumn(name = "music_id")},
            inverseJoinColumns = {@JoinColumn(name = "genre_id")})
    List<Genre> genres = new LinkedList<>();

}

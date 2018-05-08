package com.worldmusic.worldmusic.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "album")
public class Album {

    @Id
    @GeneratedValue
    @Column
    private int id;
    @Column
    private String name;
    @Column(name = "album_img")
    private String albumImg;

}

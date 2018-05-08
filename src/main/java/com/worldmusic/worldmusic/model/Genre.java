package com.worldmusic.worldmusic.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Data
@AllArgsConstructor
@NoArgsConstructor

@Entity
@Table(name = "genre")
public class Genre {
    @Id
    @GeneratedValue
    @Column
    private int id;
    @Column
    private String name;

}

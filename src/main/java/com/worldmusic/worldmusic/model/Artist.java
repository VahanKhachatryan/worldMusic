package com.worldmusic.worldmusic.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Data
@AllArgsConstructor
@NoArgsConstructor

@Entity
@Table(name = "artist")
public class Artist {
    @Id
    @GeneratedValue
    @Column
    private int id;
    @Column
    private String name;
    @Column
    private String surname;
    @Column
    private int age;
    @Enumerated(EnumType.STRING)
    @Column
    private Gender gender;
    @Column
    private String country;
    @Column
    private String photo;
}

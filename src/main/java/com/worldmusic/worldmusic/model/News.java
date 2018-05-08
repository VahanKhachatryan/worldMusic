package com.worldmusic.worldmusic.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.sql.Timestamp;

@Data
@AllArgsConstructor
@NoArgsConstructor

@Entity
@Table(name = "news")
public class News {
    @Id
    @GeneratedValue
    @Column
    private int id;
    @Column
    private String name;
    @Column
    private String description;
    @Column(name = "news_image")
    private String newsImage;
    @Column
    @DateTimeFormat(pattern = "dd-MM-yyyy")
    private Timestamp timestamp;
}

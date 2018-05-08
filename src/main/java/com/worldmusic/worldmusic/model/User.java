package com.worldmusic.worldmusic.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
@Entity
@Table(name = "user")
public class User {

    @Id
    @GeneratedValue
    @Column
    private int id;
    @Column
    @NotNull(message = "Name Can Not Be Null")
    private String name;
    @Column
    @NotNull(message = "Surname Can Not Be Null")
    private String surname;
    @Column
    @NotNull(message = "Email Can Not Be Null")
    private String email;
    @Column
    @NotNull(message = "Password Can Not Be Null")
    private String password;
    @Column(name = "pic_url")
    private String picUrl;
    @Enumerated(EnumType.STRING)
    @Column(name = "user_type")
    private UserType userType;
    @Column
    private boolean verify;
}

package com.worldmusic.worldmusic.security;

import com.worldmusic.worldmusic.model.User;
import com.worldmusic.worldmusic.model.UserType;
import org.springframework.security.core.authority.AuthorityUtils;

public class CurrentUser extends org.springframework.security.core.userdetails.User {

    private User user;

    public CurrentUser(User user) {
        super(user.getEmail(), user.getPassword(),user.isVerify(),
                true,true,true,
                AuthorityUtils.createAuthorityList(user.getUserType().name()));
        this.user = user;
    }

    public User getUser() {
        return user;
    }

    public int getId() {
        return user.getId();
    }

    public UserType getRole() {
        return user.getUserType();
    }

}

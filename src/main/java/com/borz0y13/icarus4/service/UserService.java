package com.borz0y13.icarus4.service;

import com.borz0y13.icarus4.entity.User;

import java.util.List;

public interface UserService {

    public List<User> getAll();

    public void save(User user);

    public User get(int id);

    public void delete(int id);

    public User findByNickname(String nickname);
}

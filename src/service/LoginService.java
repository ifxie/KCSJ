package service;

import bean.User;

public interface LoginService {
    String login(User user);
    User selectUser(String name);
}

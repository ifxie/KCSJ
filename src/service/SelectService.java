package service;

import bean.SourceFile;
import bean.User_detail;

public interface SelectService {
    SourceFile select(String filename);

    User_detail selectUser(User_detail user_detail);

    String selectpath(String filename);
}

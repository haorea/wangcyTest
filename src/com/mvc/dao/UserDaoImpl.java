package com.mvc.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.mvc.dto.UserDto;
import com.mvc.model.LoginModel;

@Repository
public class UserDaoImpl implements UserDao {


    public List<UserDto> selectByCondition(LoginModel loginModel) {
        return null;
    }
}

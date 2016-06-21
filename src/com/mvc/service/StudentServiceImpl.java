package com.mvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mvc.dao.StudentDao;
import com.mvc.dto.StudentDto;

@Service
public class StudentServiceImpl implements StudentService {

    @Autowired
    StudentDao studentDao = null;

    @Override
    public List<StudentDto> selectStudent() {
        return studentDao.selectByCondition();
    }

}

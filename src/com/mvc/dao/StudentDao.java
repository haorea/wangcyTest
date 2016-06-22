package com.mvc.dao;

import java.util.List;

import com.mvc.dto.StudentDto;


public interface StudentDao {


    public List<StudentDto> selectByCondition();
    public void delete(int studentId);
    public List<StudentDto> selectById(int studentId);

}

package com.mvc.service;

import java.util.List;

import com.mvc.dto.StudentDto;

public interface StudentService {

    public List<StudentDto> selectStudent();
    public void deleteStudent(int studentId);
    public List<StudentDto> selectStudentById(int studentId);


}

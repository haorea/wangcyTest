package com.mvc.service;

import java.util.List;
import java.util.Optional;

import com.mvc.dto.StudentDto;

public interface StudentService {

    public List<StudentDto> selectStudent();
    public void deleteStudent(int studentId);
    public  List<StudentDto> getDisplayById(int studentId);
    public  Optional<StudentDto> getDisplayById1(int studentId);


}

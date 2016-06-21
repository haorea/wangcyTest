package com.mvc.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.mvc.dto.StudentDto;

@Repository
public class StudentDaoImpl implements StudentDao {

    @Autowired
    private JdbcTemplate JdbcTemelate = null;

    public List<StudentDto> selectByCondition() {

        final StringBuilder sql = new StringBuilder();
        sql.append(" SELECT");
        sql.append(" username, ");
        sql.append(" age, ");
        sql.append(" score, ");
        sql.append(" gender ");
        sql.append(" FROM");
        sql.append("  student");
        sql.append(" WHERE");
        sql.append(" 1=1 ");

        Object[] paramer = new Object[]{};

        List<StudentDto> studentList = JdbcTemelate.query(sql.toString(), paramer, new StudentRowMapper());

        return studentList;
    }

    protected class StudentRowMapper implements RowMapper<StudentDto> {

        @Override
        public StudentDto mapRow(ResultSet rs, int paramInt) throws SQLException {

            StudentDto studentDto = new StudentDto();
            studentDto.setUsername(rs.getString("username"));
            studentDto.setAge(rs.getString("age"));
            studentDto.setScore(rs.getString("score"));
            studentDto.setGender(rs.getString("gender"));

            return studentDto;
        }
    }
}

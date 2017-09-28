package com.mvc.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.mvc.dto.ForumDto;
import com.mvc.dto.ZTHFDto;

@Repository
public class  ForumDaoImpl implements ForumDao{

    @Autowired
    private JdbcTemplate JdbcTemelate = null;

    public List<ForumDto> selectAllForums() {

        List<Object> paramList =new ArrayList<Object>();

        final StringBuilder sql =new StringBuilder();

        sql.append(" SELECT");
        sql.append(" BKId, ");
        sql.append(" BKName ");
        sql.append(" FROM");
        sql.append("  LRSBK");
        sql.append(" WHERE");
        sql.append(" 1=1 ");

        List<ForumDto> forumList = JdbcTemelate.query(sql.toString(), paramList.toArray(), new ForumRowMapper());
        return forumList;
    }

    public List<ZTHFDto> selectAllResponse(int bkid) {

        List<Object> paramList =new ArrayList<Object>();

        final StringBuilder sql =new StringBuilder();

        sql.append(" SELECT");
        sql.append(" HFid, ");
        sql.append(" BKID, ");
        sql.append(" HFNR ");
        sql.append(" FROM");
        sql.append("  ZTHF");
        sql.append(" WHERE");
        sql.append(" 1=1 ");
        sql.append(" AND ");
        sql.append(" BKID=? ");
        paramList.add(bkid);
        List<ZTHFDto> responseList = JdbcTemelate.query(sql.toString(), paramList.toArray(), new ForumZTHFRowMapper());
        return responseList;
    }


    protected class ForumRowMapper implements RowMapper<ForumDto> {

        @Override
        public ForumDto mapRow(ResultSet rs, int paramInt) throws SQLException {

            ForumDto forumDto = new ForumDto();
            forumDto.setBKId(rs.getInt("BKId"));
            forumDto.setBKName(rs.getString("BKName"));

            return forumDto;
        }
    }

    protected class ForumZTHFRowMapper implements RowMapper<ZTHFDto> {

        @Override
        public ZTHFDto mapRow(ResultSet rs, int paramInt) throws SQLException {

            ZTHFDto zthfDto = new ZTHFDto();
            zthfDto.setHFid(rs.getInt("HFid"));
            zthfDto.setBKID(rs.getInt("BKID"));
            zthfDto.setHFNR(rs.getString("HFNR"));
            return zthfDto;
        }
    }

}

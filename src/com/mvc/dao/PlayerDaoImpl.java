package com.mvc.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.mvc.dto.InformationDto;
import com.mvc.dto.PlayerDto;
import com.mvc.dto.RoleDto;
import com.mvc.model.PlayerModel;

@Repository
public class PlayerDaoImpl implements PlayerDao {

    @Autowired
    private JdbcTemplate JdbcTemelate = null;

    /**
     * 检索
     */
    @Override
    public List<InformationDto> selectAllPlayer() {

        List<Object> paramList = new ArrayList<Object>();
        final StringBuilder sql = new StringBuilder();
        sql.append(" SELECT");
        sql.append(" id, ");
        sql.append(" player_name ");
        sql.append(" FROM");
        sql.append("  information");
        sql.append(" WHERE");
        sql.append(" 1=1 ");

        List<InformationDto> informationList = JdbcTemelate.query(sql.toString(), paramList.toArray(), new InformationRowMapper());

        return informationList;
    }

    /**
     * 检索
     */
    @Override
    public List<RoleDto> selectAllRole() {

        List<Object> paramList = new ArrayList<Object>();
        final StringBuilder sql = new StringBuilder();
        sql.append(" SELECT");
        sql.append(" id, ");
        sql.append(" role ");
        sql.append(" FROM");
        sql.append("  role");
        sql.append(" WHERE");
        sql.append(" 1=1 ");

        List<RoleDto> roleList = JdbcTemelate.query(sql.toString(), paramList.toArray(), new RoleRowMapper());

        return roleList;
    }

    /**
     * 检索
     */
    @Override
    public List<PlayerDto> selectPlayerList() {

        List<Object> paramList = new ArrayList<Object>();
        final StringBuilder sql = new StringBuilder();
        sql.append(" SELECT");
        sql.append("  player.id, ");
        sql.append(" player.infor_id, ");
        sql.append(" player.date, ");
        sql.append(" player.game_status, ");
        sql.append(" information.player_name as inforName, ");
        sql.append(" role.role as roleName, ");
        sql.append(" player.role_id ");
        sql.append(" FROM");
        sql.append("  player");
        sql.append("  LEFT JOIN");
        sql.append("  information");
        sql.append("  ON");
        sql.append("  player.infor_id=information.id");
        sql.append("  LEFT JOIN");
        sql.append("  role");
        sql.append("  ON");
        sql.append("  player.role_id=role.id");
        sql.append(" WHERE");
        sql.append(" 1=1 ");
        sql.append(" order by player.date desc ");

        System.out.println(sql.toString());
        System.out.println(paramList);

        List<PlayerDto> playerList = JdbcTemelate.query(sql.toString(), paramList.toArray(), new PlayerListRowMapper());

        System.out.println(sql.toString());

        return playerList;
    }


    /**
     * 插入
     */
    @Override
    public void insert(PlayerModel playerModel) {

        final StringBuilder sql = new StringBuilder();

        sql.append(" INSERT INTO ");
        sql.append(" player ");
        sql.append(" ( ");
        sql.append(" infor_id, ");
        sql.append(" date, ");
        sql.append(" game_status, ");
        sql.append(" role_id ");
        sql.append(" ) ");
        sql.append(" values ");
        sql.append(" ( ");
        sql.append(" ?, ");
        sql.append(" ?, ");
        sql.append(" ?, ");
        sql.append(" ? ");
        sql.append(" ) ");

        Object[] paramer = new Object[]{playerModel.getInforId(),playerModel.getDate(),playerModel.getGameStatus(),playerModel.getRoleId()};
        JdbcTemelate.update(sql.toString(), paramer);

    }



    protected class RoleRowMapper implements RowMapper<RoleDto> {

        @Override
        public RoleDto mapRow(ResultSet rs, int paramInt) throws SQLException {

            RoleDto roleDto = new RoleDto();
            roleDto.setId(rs.getInt("id"));
            roleDto.setRole(rs.getString("role"));
            return roleDto;
        }
    }

    protected class InformationRowMapper implements RowMapper<InformationDto> {

        @Override
        public InformationDto mapRow(ResultSet rs, int paramInt) throws SQLException {

            InformationDto informationDto = new InformationDto();
            informationDto.setId(rs.getInt("id"));
            informationDto.setPlayerName(rs.getString("player_name"));
            return informationDto;
        }
    }



    protected class PlayerRowMapper implements RowMapper<PlayerDto> {

        @Override
        public PlayerDto mapRow(ResultSet rs, int paramInt) throws SQLException {

            PlayerDto playerDto = new PlayerDto();
            playerDto.setId(rs.getInt("id"));
            playerDto.setRoleId(rs.getInt("role_id"));
            playerDto.setDate(rs.getDate("date"));
            playerDto.setGamestatus(rs.getString("game_status"));
            return playerDto;
        }
    }



    protected class PlayerCountListRowMapper implements RowMapper<PlayerDto> {

        @Override
        public PlayerDto mapRow(ResultSet rs, int paramInt) throws SQLException {

            PlayerDto playerDto = new PlayerDto();
            playerDto.setSuccessCount(rs.getInt("count(player.game_status)"));

            return playerDto;
        }
    }

    protected class PlayerListRowMapper implements RowMapper<PlayerDto> {

        @Override
        public PlayerDto mapRow(ResultSet rs, int paramInt) throws SQLException {

            PlayerDto playerDto = new PlayerDto();
            playerDto.setId(rs.getInt("id"));
            playerDto.setRoleId(rs.getInt("role_id"));
            playerDto.setInforId(rs.getInt("infor_id"));
            playerDto.setDate(rs.getDate("date"));
            playerDto.setGamestatus(rs.getString("game_status"));
            playerDto.setInforName(rs.getString("inforName"));
            playerDto.setRoleName(rs.getString("roleName"));
            return playerDto;
        }
    }


}

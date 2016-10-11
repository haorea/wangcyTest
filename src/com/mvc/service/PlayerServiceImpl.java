package com.mvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mvc.dao.PlayerDao;
import com.mvc.dto.InformationDto;
import com.mvc.dto.PlayerDto;
import com.mvc.dto.RoleDto;
import com.mvc.model.PlayerModel;

@Service
public class PlayerServiceImpl implements PlayerService {

    @Autowired
    PlayerDao playerDao = null;

    @Override
    public List<InformationDto> selectPlayer() {
        return playerDao.selectAllPlayer();
    }

    @Override
    public List<RoleDto> selectRole() {
        return playerDao.selectAllRole();
    }


    /**
     * 新增player
     */
    @Override
    public void addPlayer(PlayerModel playerModel) {

        playerDao.insert(playerModel);

    }
    @Override
    public List<PlayerDto> selectPlayerList() {
        return playerDao.selectPlayerList();
    }


}

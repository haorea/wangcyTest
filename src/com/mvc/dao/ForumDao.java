package com.mvc.dao;

import java.util.List;

import com.mvc.dto.ForumDto;
import com.mvc.dto.ZTHFDto;

public interface ForumDao {

    public List<ForumDto> selectAllForums();
    public List<ZTHFDto> selectAllResponse(int bkid);

}

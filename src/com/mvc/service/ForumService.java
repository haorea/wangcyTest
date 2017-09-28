package com.mvc.service;

import java.util.List;

import com.mvc.dto.ForumDto;
import com.mvc.dto.ZTHFDto;


public interface ForumService {

    public List<ForumDto> selectForum();
    public List<ZTHFDto> selectForumThemeResponse(int bkid);
}

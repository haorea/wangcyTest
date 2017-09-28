package com.mvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mvc.dao.ForumDao;
import com.mvc.dto.ForumDto;
import com.mvc.dto.ZTHFDto;

@Service
public class ForumServiceImpl implements ForumService{
    @Autowired
    ForumDao forumDao = null;

    @Override
    public List<ForumDto> selectForum() {
        return forumDao.selectAllForums();
    }

    @Override
    public List<ZTHFDto> selectForumThemeResponse(int bkid) {
        return forumDao.selectAllResponse(bkid);
    }

}

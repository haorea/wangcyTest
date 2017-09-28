package com.mvc.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mvc.dto.ForumDto;
import com.mvc.dto.ZTHFDto;
import com.mvc.model.ZTHFModel;
import com.mvc.service.ForumService;

@Controller
public class ForumController {

    @Autowired
    ForumService forumService =null;

    @RequestMapping(value = "/forum")
    public String init() {
        return "forum";
    }

    @RequestMapping(value = "/forumTheme")
    public String forumTheme() {
        return "forumTheme";
    }


    /**
     * 论坛一览
     *
     * @return
     */
    @RequestMapping(value = "/forumInit", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> forumInit() {
        List<ForumDto> forumList = forumService.selectForum();
        Map<String, Object> resultMap = new HashMap<String, Object>();
        resultMap.put("forumList", forumList);
        return bulidReturnMap("ok", resultMap);

    }

    /**
     * 主题一览
     *
     * @return
     */
    @RequestMapping(value = "/forumZT", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> forumZT(@RequestBody ZTHFModel zthfModel) {
        List<ZTHFDto> forumZTHFList = forumService.selectForumThemeResponse(zthfModel.getBKID());
        Map<String, Object> resultMap = new HashMap<String, Object>();
        resultMap.put("forumZTHFList", forumZTHFList);
        return bulidReturnMap("ok", resultMap);

    }



    public Map<String, Object> bulidReturnMap(String code, Object result) {

        Map<String, Object> returnMap = new HashMap<String, Object>();
        returnMap.put("code", code);
        returnMap.put("result", result);

        return returnMap;

    }
}

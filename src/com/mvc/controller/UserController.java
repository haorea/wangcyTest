package com.mvc.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mvc.model.StudentModel;
import com.mvc.service.UsetService;

@Controller
public class UserController {

    @Autowired
    UsetService userService = null;

    @RequestMapping(value = "/userAdd")
    public String userAdd() {
        return "userAdd";
    }

    @RequestMapping(value = "/userAddInit", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> userAddInit(@RequestBody StudentModel studentModel) {
        System.out.println("hahah");

        userService.addStudent(studentModel);


        return bulidReturnMap("ok", null);

    }

    public Map<String, Object> bulidReturnMap(String code, Object result) {

        Map<String, Object> returnMap = new HashMap<String, Object>();
        returnMap.put("code", code);
        returnMap.put("result", result);

        return returnMap;

    }

}

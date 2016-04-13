package com.mvc.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

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

   @RequestMapping(value = "/fileUpload", method = RequestMethod.POST)
    public String fileUpload(StudentModel studentModel, MultipartFile file,HttpServletRequest request){
       System.out.println(file.getOriginalFilename());
       System.out.println(file);
       System.out.println(file.getContentType());
       System.out.println(file.getSize());


       //如果用的是Tomcat服务器，则文件会上传到\\%TOMCAT_HOME%\\webapps\\YourWebProject\\WEB-INF\\upload\\文件夹中
       String realPath = request.getSession().getServletContext().getRealPath("/WEB-INF/upload");
       System.out.println(realPath);

       return "userAdd";

    }



    public Map<String, Object> bulidReturnMap(String code, Object result) {

        Map<String, Object> returnMap = new HashMap<String, Object>();
        returnMap.put("code", code);
        returnMap.put("result", result);

        return returnMap;

    }

}

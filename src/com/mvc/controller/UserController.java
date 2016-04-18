package com.mvc.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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
    public String fileUpload(StudentModel studentModel, @RequestParam(value = "file", required = false)MultipartFile file,HttpServletRequest request,ModelMap model){
       System.out.println(file.getOriginalFilename());
       System.out.println(file);
       System.out.println(file.getContentType());
       System.out.println(file.getSize());


       //如果用的是Tomcat服务器，则文件会上传到\\%TOMCAT_HOME%\\webapps\\YourWebProject\\WEB-INF\\upload\\文件夹中
       String realPath = request.getSession().getServletContext().getRealPath("/WEB-INF/upload");
       //这里不必处理IO流关闭的问题，因为FileUtils.copyInputStreamToFile()方法内部会自动把用到的IO流关掉，我是看它的源码才知道的
     /*  try {
        FileUtils.copyInputStreamToFile(file.getInputStream(), new File(realPath, file.getOriginalFilename()));
    } catch (IOException e) {
        // TODO 自動生成された catch ブロック
        e.printStackTrace();
    }*/

       String fileName = file.getOriginalFilename();
       File targetFile  =new File("C:/Users/wang_changyuan/git/wangcyTest/WebContent/WEB-INF/views/upload",fileName);
       if(targetFile.exists()){
           targetFile.delete();
       }

       if(!targetFile.exists()){
           targetFile.mkdirs();
       }

       //保存
       try {
        file.transferTo(targetFile);
    } catch (IllegalStateException | IOException e) {
        e.printStackTrace();
    }
       model.addAttribute("fileUrl",fileName);
       System.out.println(request.getContextPath()+"upload/"+fileName);
       System.out.println(realPath);

       return "result";

    }



    public Map<String, Object> bulidReturnMap(String code, Object result) {

        Map<String, Object> returnMap = new HashMap<String, Object>();
        returnMap.put("code", code);
        returnMap.put("result", result);

        return returnMap;

    }

}

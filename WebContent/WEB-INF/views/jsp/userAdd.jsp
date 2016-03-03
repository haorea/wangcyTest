<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="/" var="baseUrl" />
<!DOCTYPE html>
<html lang="ja">
<head>
<title>SpringMvc</title>
</head>
<body>
  <div>学生信息登録</div>
  <div id="p003UserAddDiv">
    <form id="p003UserAddForm">
      <table id="p003UserAddTable">
        <tr>
          <th>姓名</th>
          <td>
            <input id="p003UserNameTxt" name="username" type="text" />
          </td>
        </tr>
        <tr>
          <th>性别</th>
          <td>
            <input id="p003GenderTxt" name="gender" type="text" />
          </td>
        </tr>
        <tr>
          <th>年龄</th>
          <td>
            <input id="p003AgeTxt" name="age" type="text" />
          </td>
        </tr>
        <tr>
          <th>成绩</th>
          <td>
            <input id="p003ScoreTxt" name="score" type="text" />
          </td>
        </tr>
        <tr>
          <th></th>
          <td>
            <button type="button" id="p003UserAddTxt">登录</button>
          </td>
        </tr>
      </table>
    </form>
  </div>
</body>
</html>
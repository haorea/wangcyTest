<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="/" var="baseUrl" />
<!DOCTYPE html>
<html lang="ja">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="${baseUrl}js/jquery.validate.js" type="text/JavaScript"></script>
<script src="${baseUrl}js/jquery.validate.min.js" type="text/JavaScript"></script>
<link type="text/css" href="${baseUrl}css/common.css" rel="stylesheet" />
<title>玩家信息录入</title>
</head>
<body>
  <div style="padding-top: 30px;">玩家信息录入</div>
  <div>
    <form id="p006KillerAddForm">
      <table id="p006KillerAddTable" style="padding-top: 10px;">
        <tr>
          <th>玩家姓名</th>
          <td>
            <input id="p006PlayerNameTxt" name=playerName type="text" />
          </td>
        </tr>
        <tr>
          <th>玩家性别</th>
          <td>
            <input type="radio" name="gender" value="boy" checked="checked" id="p006GenderBoyRadio" />
            <label>男</label>
            <input type="radio" name="gender" value="girl" id="p006GenderGirlRadio" />
            <label>女</label>
          </td>
        </tr>
        <tr>
          <th>玩家年龄</th>
          <td>
            <input id="p006AgeTxt" name="age" type="text" />
          </td>
        </tr>
        <tr>
          <td>
            <button type="button" id="p006AddBtn">录入</button>
          </td>
        </tr>
      </table>
    </form>
  </div>
</body>
</html>
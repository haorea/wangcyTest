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
<title>狼人杀胜率查询</title>
</head>
<body>
  <div style="padding-top: 30px;">狼人杀胜率查询</div>
  <div>
    <form id="p005KillRateSearchForm">
      <table style="padding-top: 10px;">
        <tr>
          <th>玩家姓名</th>
          <td>
            <select style="width: 200px" id="p005PlayerNameSelect" name="name">
            </select>
          </td>
        </tr>
        <tr>
          <td>
            <button type="button" id="p005SearchBtn">查询</button>
          </td>
        </tr>
      </table>
    </form>
  </div>
  <div style="padding-top: 30px;" id="p005PlayerRateSearch"></div>
  <div id="p005InformationTable" style="width: 1300px;"></div>
</body>
</html>
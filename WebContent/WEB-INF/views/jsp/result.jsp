<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="/" var="baseUrl" />
<!DOCTYPE html>
<html lang="ja">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="${baseUrl}js/jquery-2.1.4.min.js"></script>
<script src="${baseUrl}js/jquery.json-2.4.js"></script>
<link type="text/css" href="${baseUrl}css/login.css" rel="stylesheet" />
<script data-main="${baseUrl}js/main" src="${baseUrl}js/require.js"></script>
<title>上传结果</title>  </head>
<body>
<img alt="" src="${baseUrl}upload/${fileUrl}" />

</body>
</html>
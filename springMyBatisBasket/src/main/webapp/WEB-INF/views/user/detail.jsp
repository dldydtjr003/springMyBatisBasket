<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원 상세 정보</title>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;700&display=swap" rel="stylesheet">
    <style>
        body { font-family: 'Noto Sans KR', sans-serif; background-color: #f4f7f6; display: flex; justify-content: center; align-items: center; min-height: 100vh; margin: 0; }
        .detail-container { background-color: #fff; padding: 40px; border-radius: 12px; box-shadow: 0 8px 20px rgba(0,0,0,0.1); width: 450px; }
        h2 { text-align: center; color: #333; margin-bottom: 30px; font-weight: 700; }
        .info-group { margin-bottom: 20px; border-bottom: 1px solid #eee; padding-bottom: 10px; }
        .info-group label { display: block; font-size: 14px; color: #888; margin-bottom: 5px; }
        .info-group span { font-size: 18px; color: #333; font-weight: 500; }
        .btn-group { display: flex; gap: 10px; margin-top: 30px; }
        .btn { flex: 1; padding: 12px; border: none; border-radius: 8px; cursor: pointer; font-size: 16px; font-weight: 700; transition: 0.3s; text-align: center; text-decoration: none; }
        .btn-update { background-color: #4A90E2; color: white; }
        .btn-update:hover { background-color: #357ABD; }
        .btn-delete { background-color: #e74c3c; color: white; }
        .btn-delete:hover { background-color: #c0392b; }
        .btn-list { background-color: #6c757d; color: white; }
        .btn-list:hover { background-color: #5a6268; }
    </style>
</head>
<body>

<div class="detail-container">
    <h2>회원 상세 정보</h2>
    
    <div class="info-group">
        <label>번호</label>
        <span>${user.no}</span>
    </div>
    <div class="info-group">
        <label>아이디</label>
        <span>${user.id}</span>
    </div>
    <div class="info-group">
        <label>이름</label>
        <span>${user.name}</span>
    </div>
    <div class="info-group">
        <label>이메일</label>
        <span>${user.email}</span>
    </div>
    <div class="info-group">
        <label>전화번호</label>
        <span>${user.phone}</span>
    </div>

    <div class="btn-group">
        <a href="/user/updateForm?no=${user.no}" class="btn btn-update">수정하기</a>
        <a href="/user/delete?no=${user.no}" class="btn btn-delete" onclick="return confirm('정말 삭제하시겠습니까?');">삭제하기</a>
    </div>
    <div style="margin-top: 10px;">
        <a href="/user/userList" class="btn btn-list" style="display: block;">목록으로 돌아가기</a>
    </div>
</div>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원 정보 수정</title>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
    <style>
        body { font-family: 'Noto Sans KR', sans-serif; background-color: #f4f7f6; display: flex; justify-content: center; align-items: center; min-height: 100vh; margin: 0; }
        .update-container { background-color: #fff; padding: 40px; border-radius: 12px; box-shadow: 0 8px 20px rgba(0,0,0,0.1); width: 450px; }
        h2 { text-align: center; color: #333; margin-bottom: 30px; }
        .form-group { margin-bottom: 15px; }
        .form-group label { display: block; margin-bottom: 8px; color: #666; font-size: 14px; }
        .form-group input { width: 100%; padding: 12px; border: 1px solid #ddd; border-radius: 8px; box-sizing: border-box; font-size: 16px; }
        .form-group input[readonly] { background-color: #f9f9f9; color: #999; cursor: not-allowed; }
        .btn-group { display: flex; gap: 10px; margin-top: 30px; }
        .btn { flex: 1; padding: 12px; border: none; border-radius: 8px; cursor: pointer; font-size: 16px; font-weight: 700; transition: 0.3s; text-align: center; text-decoration: none; }
        .btn-submit { background-color: #4A90E2; color: white; }
        .btn-submit:hover { background-color: #357ABD; }
        .btn-cancel { background-color: #6c757d; color: white; }
        .btn-cancel:hover { background-color: #5a6268; }
        .helper-text { font-size: 12px; color: #e74c3c; margin-top: 5px; }
    </style>
</head>
<body>

<div class="update-container">
    <h2>회원 정보 수정</h2>
    <form action="/user/update" method="post">
        <input type="hidden" name="no" value="${user.no}">

        <div class="form-group">
            <label>아이디 (수정 불가)</label>
            <input type="text" name="id" value="${user.id}" readonly>
        </div>

        <div class="form-group">
            <label>새 비밀번호</label>
            <input type="password" name="password" required placeholder="변경할 비밀번호 입력">
            <p class="helper-text">* 수정을 위해 비밀번호를 다시 입력해주세요.</p>
        </div>

        <div class="form-group">
            <label>이름</label>
            <input type="text" name="name" value="${user.name}" required>
        </div>

        <div class="form-group">
            <label>이메일</label>
            <input type="email" name="email" value="${user.email}">
        </div>

        <div class="form-group">
            <label>전화번호</label>
            <input type="text" name="phone" value="${user.phone}">
        </div>

        <div class="btn-group">
            <button type="submit" class="btn btn-submit">수정 완료</button>
            <a href="javascript:history.back()" class="btn btn-cancel">취소</a>
        </div>
    </form>
</div>

</body>
</html>
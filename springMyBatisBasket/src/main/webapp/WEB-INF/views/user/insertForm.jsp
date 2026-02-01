<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원가입</title>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Noto Sans KR', sans-serif;
            background-color: #f4f7f6;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .register-container {
            background-color: #fff;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 8px 20px rgba(0,0,0,0.1);
            width: 400px;
        }
        .register-container h2 {
            text-align: center;
            color: #333;
            margin-bottom: 30px;
            font-weight: 700;
        }
        .form-group {
            margin-bottom: 20px;
        }
        .form-group label {
            display: block;
            margin-bottom: 8px;
            font-size: 14px;
            color: #666;
            font-weight: 500;
        }
        .form-group input {
            width: 100%;
            padding: 12px 15px;
            box-sizing: border-box;
            border: 1px solid #ddd;
            border-radius: 6px;
            outline: none;
            transition: border-color 0.3s;
        }
        .form-group input:focus {
            border-color: #4A90E2;
        }
        .btn-group {
            display: flex;
            gap: 10px;
            margin-top: 30px;
        }
        button {
            flex: 1;
            padding: 13px;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            font-weight: 500;
            cursor: pointer;
            transition: 0.3s;
        }
        .btn-submit {
            background-color: #4A90E2;
            color: white;
        }
        .btn-submit:hover {
            background-color: #357ABD;
        }
        .btn-reset {
            background-color: #e0e0e0;
            color: #333;
        }
        .btn-reset:hover {
            background-color: #d0d0d0;
        }
        .btn-list {
            background-color: #fff;
            border: 1px solid #ddd;
            color: #666;
        }
        .btn-list:hover {
            background-color: #f9f9f9;
        }
    </style>
</head>
<body>

<div class="register-container">
    <h2>회원가입</h2>
    <form action="/user/insert" method="post">
        <div class="form-group">
            <label>아이디</label>
            <input type="text" name="id" required placeholder="아이디 입력">
        </div>
        <div class="form-group">
            <label>비밀번호</label>
            <input type="password" name="password" required placeholder="비밀번호 입력">
        </div>
        <div class="form-group">
            <label>이름</label>
            <input type="text" name="name" required placeholder="이름 입력">
        </div>
        <div class="form-group">
            <label>이메일</label>
            <input type="email" name="email" placeholder="example@mail.com">
        </div>
        <div class="form-group">
            <label>전화번호</label>
            <input type="text" name="phone" placeholder="010-0000-0000">
        </div>

        <div class="btn-group">
            <button type="submit" class="btn-submit">가입하기</button>
            <button type="reset" class="btn-reset">취소</button>
        </div>
        <button type="button" class="btn-list" style="width: 100%; margin-top: 10px;" onclick="location.href='/user/userList'">목록으로 돌아가기</button>
    </form>
</div>

</body>
</html>
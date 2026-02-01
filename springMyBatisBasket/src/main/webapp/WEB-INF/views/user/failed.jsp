<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>오류 발생</title>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;700&display=swap" rel="stylesheet">
    <style>
        body { font-family: 'Noto Sans KR', sans-serif; background-color: #f4f7f6; display: flex; justify-content: center; align-items: center; height: 100vh; margin: 0; }
        .alert-card { background: white; padding: 40px; border-radius: 15px; box-shadow: 0 4px 15px rgba(0,0,0,0.1); text-align: center; width: 350px; border-top: 5px solid #dc3545; }
        .icon { font-size: 50px; color: #dc3545; margin-bottom: 20px; }
        h2 { color: #333; margin-bottom: 10px; }
        p { color: #666; margin-bottom: 30px; }
        .btn-retry { background-color: #6c757d; color: white; border: none; padding: 12px 30px; border-radius: 8px; cursor: pointer; font-size: 16px; transition: 0.3s; }
        .btn-retry:hover { background-color: #5a6268; }
    </style>
</head>
<body>
    <div class="alert-card">
        <div class="icon">!</div>
        <h2>문제가 발생했습니다</h2>
        <p>${message}</p>
        <button class="btn-retry" onclick="history.back()">다시 시도</button>
    </div>
</body>
</html>
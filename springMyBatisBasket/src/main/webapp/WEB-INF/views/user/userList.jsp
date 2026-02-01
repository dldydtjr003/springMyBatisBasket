<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원 관리 리스트</title>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500;700&display=swap" rel="stylesheet">
    <style>
        body { font-family: 'Noto Sans KR', sans-serif; background-color: #f4f7f6; padding: 50px; display: flex; flex-direction: column; align-items: center; }
        .list-container { background-color: #fff; padding: 30px; border-radius: 12px; box-shadow: 0 8px 20px rgba(0,0,0,0.05); width: 90%; max-width: 1000px; }
        h2 { text-align: center; color: #333; margin-bottom: 30px; }
        table { width: 100%; border-collapse: collapse; margin-bottom: 20px; }
        th { background-color: #f8f9fa; color: #555; padding: 15px; border-bottom: 2px solid #eee; }
        td { padding: 15px; text-align: center; border-bottom: 1px solid #eee; color: #666; }
        
        /* 아이디 링크 스타일 */
        .user-link { color: #4A90E2; font-weight: 700; text-decoration: none; cursor: pointer; }
        .user-link:hover { text-decoration: underline; color: #357ABD; }

        /* 버튼 스타일 */
        .btn { padding: 6px 12px; border: none; border-radius: 4px; cursor: pointer; font-size: 13px; text-decoration: none; display: inline-block; }
        .btn-view { background-color: #4A90E2; color: white; }
        .btn-add { background-color: #28a745; color: white; float: right; margin-bottom: 15px; padding: 10px 20px; }
        
        .no-data { padding: 50px; text-align: center; color: #999; }
    </style>
</head>
<body>

<div class="list-container">
    <h2>회원 관리 리스트</h2>
    
    <a href="/user/insertForm" class="btn btn-add">신규 회원 등록</a>
    
    <table>
        <thead>
            <tr>
                <th>번호</th>
                <th>아이디 (클릭시 상세조회)</th>
                <th>이름</th>
                <th>이메일</th>
                <th>상세보기</th>
            </tr>
        </thead>
        <tbody>
            <c:choose>
                <c:when test="${not empty userList}">
                    <c:forEach items="${userList}" var="user">
                        <tr>
                            <td>${user.no}</td>
                            <td>
                                <a href="/user/detail?no=${user.no}" class="user-link">${user.id}</a>
                            </td>
                            <td>${user.name}</td>
                            <td>${user.email}</td>
                            <td>
                                <a href="/user/detail?no=${user.no}" class="btn btn-view">조회</a>
                            </td>
                        </tr>
                    </c:forEach>
                </c:when>
                <c:otherwise>
                    <tr>
                        <td colspan="5" class="no-data">등록된 회원이 없습니다.</td>
                    </tr>
                </c:otherwise>
            </c:choose>
        </tbody>
    </table>
</div>

</body>
</html>
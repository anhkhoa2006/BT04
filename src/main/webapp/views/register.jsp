<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Đăng Ký Tài Khoản</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-dark text-light d-flex align-items-center justify-content-center vh-100">
    <div class="card bg-secondary text-white p-4 shadow" style="width: 420px;">
        <h3 class="text-center text-warning mb-4 fw-bold">ĐĂNG KÝ TÀI KHOẢN</h3>
        
        <c:if test="${not empty error}">
            <div class="alert alert-danger py-2 text-center" role="alert">${error}</div>
        </c:if>
        <c:if test="${not empty message}">
            <div class="alert alert-success py-2 text-center" role="alert">${message}</div>
        </c:if>
        
        <form action="${pageContext.request.contextPath}/register" method="post">
            <div class="mb-3">
                <label class="form-label">Tên đăng nhập:</label>
                <input type="text" class="form-control bg-dark text-light border-secondary" name="username" required placeholder="Nhập username..." value="${param.username}">
                <c:if test="${not empty errors.username}">
                    <small class="text-danger">${errors.username}</small>
                </c:if>
            </div>
            <div class="mb-3">
                <label class="form-label">Email:</label>
                <input type="email" class="form-control bg-dark text-light border-secondary" name="email" required placeholder="Nhập email nhận OTP..." value="${param.email}">
                <c:if test="${not empty errors.email}">
                    <small class="text-danger">${errors.email}</small>
                </c:if>
            </div>
            <div class="mb-3">
                <label class="form-label">Mật khẩu:</label>
                <input type="password" class="form-control bg-dark text-light border-secondary" name="password" required placeholder="Nhập mật khẩu...">
                <c:if test="${not empty errors.password}">
                    <small class="text-danger">${errors.password}</small>
                </c:if>
            </div>
            <button type="submit" class="btn btn-warning w-100 fw-bold py-2 mb-3 text-dark">Đăng Ký & Gửi OTP</button>
            <div class="text-center">
                <a href="${pageContext.request.contextPath}/login" class="text-info text-decoration-none">Đã có tài khoản? Đăng nhập ngay</a>
            </div>
        </form>
    </div>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
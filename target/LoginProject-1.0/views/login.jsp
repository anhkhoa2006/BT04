<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Đăng nhập hệ thống</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
</head>
<body class="bg-dark text-light d-flex align-items-center justify-content-center vh-100">
    <div class="card bg-secondary text-white p-4 shadow" style="width: 420px;">
        <h3 class="text-center text-warning mb-4 fw-bold">
            <i class="fa-solid fa-right-to-bracket me-2"></i>ĐĂNG NHẬP
        </h3>
        
        <c:if test="${not empty message}">
            <div class="alert alert-success py-2 text-center" role="alert">
                <i class="fa-solid fa-circle-check me-1"></i>${message}
            </div>
        </c:if>

        <c:if test="${not empty error}">
            <div class="alert alert-danger py-2 text-center" role="alert">
                <i class="fa-solid fa-triangle-exclamation me-1"></i>${error}
            </div>
        </c:if>
        
        <form action="${pageContext.request.contextPath}/login" method="post">
            <div class="mb-3">
                <label class="form-label">Tài khoản:</label>
                <input type="text" class="form-control bg-dark text-light border-secondary" name="username" placeholder="Nhập username..." value="${param.username}">
                <c:if test="${not empty errors.username}">
                    <small class="text-danger">${errors.username}</small>
                </c:if>
            </div>
            <div class="mb-3">
                <label class="form-label">Mật khẩu:</label>
                <input type="password" class="form-control bg-dark text-light border-secondary" name="password" placeholder="Nhập password...">
                <c:if test="${not empty errors.password}">
                    <small class="text-danger">${errors.password}</small>
                </c:if>
            </div>
            <div class="d-flex justify-content-between align-items-center mb-3">
                <div class="form-check">
                    <input type="checkbox" class="form-check-input" id="remember" name="remember">
                    <label class="form-check-label" for="remember">Nhớ mật khẩu</label>
                </div>
                <div>
                    <a href="${pageContext.request.contextPath}/forgot-password" class="text-warning text-decoration-none small">Quên mật khẩu?</a>
                </div>
            </div>
            <button type="submit" class="btn btn-warning w-100 fw-bold py-2 mb-3 text-dark">
                <i class="fa-solid fa-sign-in me-1"></i> Đăng nhập
            </button>
            <div class="text-center">
                <a href="${pageContext.request.contextPath}/register" class="text-info text-decoration-none">Chưa có tài khoản? Đăng ký ngay</a>
            </div>
        </form>
    </div>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
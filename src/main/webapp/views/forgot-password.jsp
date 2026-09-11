<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Quên Mật Khẩu</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-dark text-light d-flex align-items-center justify-content-center vh-100">
    <div class="card bg-secondary text-white p-4 shadow" style="width: 420px;">
        <h3 class="text-center text-warning mb-4 fw-bold">KHÔI PHỤC MẬT KHẨU</h3>
        <p class="text-center mb-3">Vui lòng nhập email bạn đã dùng để đăng ký tài khoản.</p>
        
        <c:if test="${not empty error}">
            <div class="alert alert-danger py-2 text-center" role="alert">${error}</div>
        </c:if>
        
        <form action="${pageContext.request.contextPath}/forgot-password" method="post">
            <div class="mb-3">
                <label class="form-label">Email:</label>
                <input type="email" class="form-control bg-dark text-light border-secondary" name="email" required placeholder="Nhập email của bạn...">
                <c:if test="${not empty errors.email}">
                    <small class="text-danger">${errors.email}</small>
                </c:if>
            </div>
            <button type="submit" class="btn btn-warning w-100 fw-bold py-2 mb-3 text-dark">Gửi mã OTP</button>
            <div class="text-center">
                <a href="${pageContext.request.contextPath}/login" class="text-info text-decoration-none">Quay lại trang Đăng nhập</a>
            </div>
        </form>
    </div>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
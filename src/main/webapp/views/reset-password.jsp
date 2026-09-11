<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Đặt lại mật khẩu</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-dark text-light d-flex align-items-center justify-content-center vh-100">
    <div class="card bg-secondary text-white p-4 shadow" style="width: 420px;">
        <h3 class="text-center text-warning mb-4 fw-bold">ĐẶT LẠI MẬT KHẨU</h3>
        <p class="text-center mb-3">Hệ thống đã gửi mã OTP đến email <b class="text-warning">${sessionScope.resetEmail}</b></p>
        
        <c:if test="${not empty error}">
            <div class="alert alert-danger py-2 text-center" role="alert">${error}</div>
        </c:if>
        
        <form action="${pageContext.request.contextPath}/verify-reset-otp" method="post">
            <div class="mb-3">
                <label class="form-label">Mã OTP:</label>
                <input type="text" class="form-control bg-dark text-light border-secondary" name="otp" required maxlength="6" placeholder="Nhập mã 6 số...">
                <c:if test="${not empty errors.otp}">
                    <small class="text-danger">${errors.otp}</small>
                </c:if>
            </div>
            <div class="mb-3">
                <label class="form-label">Mật khẩu mới:</label>
                <input type="password" class="form-control bg-dark text-light border-secondary" name="newPassword" required placeholder="Nhập mật khẩu mới...">
                <c:if test="${not empty errors.newPassword}">
                    <small class="text-danger">${errors.newPassword}</small>
                </c:if>
            </div>
            <button type="submit" class="btn btn-warning w-100 fw-bold py-2 mb-3 text-dark">Xác nhận đổi mật khẩu</button>
            <div class="text-center">
                <a href="${pageContext.request.contextPath}/login" class="text-info text-decoration-none">Quay lại Đăng nhập</a>
            </div>
        </form>
    </div>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
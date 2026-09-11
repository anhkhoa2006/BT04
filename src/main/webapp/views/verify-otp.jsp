<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Xác thực OTP</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-dark text-light d-flex align-items-center justify-content-center vh-100">
    <div class="card bg-secondary text-white p-4 shadow" style="width: 400px;">
        <h3 class="text-center text-warning mb-4 fw-bold">XÁC THỰC OTP</h3>
        <p class="text-center mb-3">Chúng tôi đã gửi một mã OTP gồm 6 chữ số đến email của bạn.</p>
        
        <c:if test="${not empty error}">
            <div class="alert alert-danger py-2 text-center" role="alert">${error}</div>
        </c:if>
        
        <form action="${pageContext.request.contextPath}/verify-otp" method="post">
            <div class="mb-3">
                <label class="form-label">Mã OTP:</label>
                <input type="text" class="form-control bg-dark text-light border-secondary text-center fs-4" name="otp" required maxlength="6" placeholder="Nhập mã 6 số...">
                <c:if test="${not empty errors.otp}">
                    <small class="text-danger">${errors.otp}</small>
                </c:if>
            </div>
            <button type="submit" class="btn btn-warning w-100 fw-bold py-2 mb-3 text-dark">Xác nhận</button>
        </form>
    </div>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
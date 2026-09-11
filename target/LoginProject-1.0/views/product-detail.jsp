<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<html>
<head>
    <title>Chi tiết sản phẩm</title>
</head>
<body>
    <div class="mt-4">
        <a href="${pageContext.request.contextPath}/home" class="btn btn-outline-info mb-4">← Quay lại trang chủ</a>

        <div class="card bg-dark text-light border-secondary shadow">
            <div class="row g-0">
                <div class="col-md-5">
                    <img src="${product.images}" class="img-fluid rounded-start h-100" alt="Lỗi ảnh" style="object-fit: cover;">
                </div>
                <div class="col-md-7">
                    <div class="card-body p-5">
                        <h2 class="card-title text-warning fw-bold mb-3">${product.productName}</h2>
                        <h3 class="text-danger fw-bold mb-4">${product.price} VNĐ</h3>
                        
                        <p class="card-text fs-5">${product.description}</p>
                        
                        <hr class="border-secondary my-4">
                        <p class="card-text text-muted">
                            Danh mục: <span class="badge bg-secondary fs-6 text-light">${product.category.categoryname}</span>
                        </p>
                        
                        <div class="mt-4">
                            <button class="btn btn-success btn-lg fw-bold px-4">Thêm vào giỏ hàng</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
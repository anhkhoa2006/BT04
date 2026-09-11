<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<html>
<head>
    <title>Quản lý Sản Phẩm</title>
</head>
<body>
    <div class="mt-4">
        <div class="d-flex justify-content-between align-items-center mb-4">
            <h3 class="text-warning mb-0">Quản lý Sản Phẩm</h3>
            <a href="${pageContext.request.contextPath}/admin/product?action=add" class="btn btn-success fw-bold">+ Thêm Sản Phẩm</a>
        </div>

        <div class="table-responsive">
            <table class="table table-dark table-striped table-hover border-secondary align-middle">
                <thead class="table-secondary text-dark">
                    <tr>
                        <th scope="col">ID</th>
                        <th scope="col">Hình ảnh</th>
                        <th scope="col">Tên Sản Phẩm</th>
                        <th scope="col">Danh mục</th>
                        <th scope="col">Giá</th>
                        <th scope="col" class="text-center">Thao tác</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${productList}" var="p">
                        <tr>
                            <td>${p.productId}</td>
                            <td>
                                <img src="${p.images}" alt="Lỗi ảnh" class="rounded" style="width: 70px; height: 70px; object-fit: cover;">
                            </td>
                            <td class="fw-bold">${p.productName}</td>
                            <td><span class="badge bg-info text-dark">${p.category.categoryname}</span></td>
                            <td class="text-danger fw-bold">${p.price} VNĐ</td>
                            <td class="text-center">
                                <a href="${pageContext.request.contextPath}/admin/product?action=edit&id=${p.productId}" class="btn btn-sm btn-primary">Sửa</a>
                                <a href="${pageContext.request.contextPath}/admin/product?action=delete&id=${p.productId}" class="btn btn-sm btn-danger" onclick="return confirm('Bạn có chắc chắn muốn xóa?');">Xóa</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>
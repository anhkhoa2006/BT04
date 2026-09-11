<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<html>
<head>
    <title>Quản lý Danh mục</title>
</head>
<body>
    <div class="mt-4">
        <div class="d-flex justify-content-between align-items-center mb-4">
            <h3 class="text-warning mb-0">Quản lý Danh Mục</h3>
            <a href="${pageContext.request.contextPath}/admin/category/add" class="btn btn-success fw-bold">+ Thêm Danh Mục</a>
        </div>

        <div class="table-responsive">
            <table class="table table-dark table-striped table-hover border-secondary align-middle">
                <thead class="table-secondary text-dark">
                    <tr>
                        <th scope="col">ID</th>
                        <th scope="col">Tên Danh Mục</th>
                        <th scope="col">Hình Ảnh</th>
                        <th scope="col">Trạng Thái</th>
                        <th scope="col" class="text-center">Thao Tác</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${listcate}" var="c">
                        <tr>
                            <td>${c.categoryid}</td>
                            <td class="fw-bold">${c.categoryname}</td>
                            <td>
                                <img src="${c.images}" alt="Hình danh mục" class="img-thumbnail bg-dark border-secondary" style="width: 80px; height: 80px; object-fit: cover;">
                            </td>
                            <td>
                                <span class="badge ${c.status == 1 ? 'bg-success' : 'bg-danger'}">
                                    ${c.status == 1 ? 'Hoạt động' : 'Khóa'}
                                </span>
                            </td>
                            <td class="text-center">
                                <a href="${pageContext.request.contextPath}/admin/category/edit?id=${c.categoryid}" class="btn btn-sm btn-primary">Sửa</a>
								<a href="${pageContext.request.contextPath}/admin/category/delete?id=${c.categoryid}" class="btn btn-sm btn-danger" onclick="return confirm('Bạn chắc chắn muốn xóa danh mục này?');">Xóa</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>
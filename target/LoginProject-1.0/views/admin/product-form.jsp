<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<html>
<head>
    <title>${product != null ? 'Cập nhật Sản Phẩm' : 'Thêm Sản Phẩm Mới'}</title>
</head>
<body>
    <div class="row justify-content-center mt-4">
        <div class="col-md-8">
            <a href="${pageContext.request.contextPath}/admin/product?action=list" class="btn btn-outline-info mb-3">← Hủy và quay lại</a>
            
            <div class="card bg-dark text-light border-secondary shadow">
                <div class="card-header bg-secondary text-warning text-center fw-bold fs-5">
                    ${product != null ? 'CẬP NHẬT SẢN PHẨM' : 'THÊM SẢN PHẨM MỚI'}
                </div>
                
                <div class="card-body p-4">
                    <c:set var="formAction" value="${product != null ? 'update' : 'insert'}" />
                    
                    <form action="${pageContext.request.contextPath}/admin/product?action=${formAction}" method="post">
                        <c:if test="${product != null}">
                            <input type="hidden" name="productId" value="${product.productId}">
                        </c:if>
                        
                        <div class="mb-3">
                            <label class="form-label text-info fw-bold">Tên sản phẩm:</label>
                            <input type="text" class="form-control bg-dark text-light border-secondary" name="productName" required value="${product.productName}">
                        </div>
                        
                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <label class="form-label text-info fw-bold">Giá (VNĐ):</label>
                                <input type="number" class="form-control bg-dark text-light border-secondary" name="price" required value="${product.price}">
                            </div>
                            <div class="col-md-6 mb-3">
                                <label class="form-label text-info fw-bold">Danh mục:</label>
                                <select class="form-select bg-dark text-light border-secondary" name="categoryId" required>
                                    <option value="">-- Chọn danh mục --</option>
                                    <c:forEach items="${categoryList}" var="cat">
                                        <option value="${cat.categoryid}" ${product != null && product.category.categoryid == cat.categoryid ? 'selected' : ''}>
                                            ${cat.categoryname}
                                        </option>
                                    </c:forEach>
                                </select>
                            </div>
                        </div>

                        <div class="mb-3">
                            <label class="form-label text-info fw-bold">Link Hình ảnh:</label>
                            <input type="text" class="form-control bg-dark text-light border-secondary" name="images" value="${product.images}">
                        </div>

                        <div class="mb-4">
                            <label class="form-label text-info fw-bold">Mô tả chi tiết:</label>
                            <textarea class="form-control bg-dark text-light border-secondary" name="description" rows="5">${product.description}</textarea>
                        </div>
                        
                        <button type="submit" class="btn btn-success w-100 fw-bold py-2">LƯU DỮ LIỆU SẢN PHẨM</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
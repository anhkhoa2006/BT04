<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<head>
    <title>Trang chủ - Hệ thống</title>
</head>
<body>
    <div class="d-flex flex-wrap justify-content-between align-items-center mb-4 p-4 bg-secondary rounded shadow">
        <div>
            <h3 class="text-info mb-1">Đăng nhập thành công!</h3>
            <p class="mb-0 text-light">Xin chào: <b class="text-warning fs-5">${sessionScope.username}</b></p>
        </div>
    </div>

    <hr class="border-light opacity-50 mb-4">

    <h3 class="text-warning mb-4 text-center">Top 10 sản phẩm mới nhất</h3>
    
    <div class="row g-4">
        <c:choose>
            <c:when test="${not empty top10Products}">
                <c:forEach items="${top10Products}" var="p">
                    <div class="col-12 col-sm-6 col-md-4 col-lg-3">
                        <div class="card bg-dark text-white border-secondary h-100 shadow-sm custom-card">
                            <img src="${not empty p.images ? p.images : 'https://via.placeholder.com/150'}" 
                                 class="card-img-top" 
                                 alt="${p.productName}" 
                                 style="height: 200px; object-fit: cover;">
                                 
                            <div class="card-body d-flex flex-column text-center">
                                <h5 class="card-title text-light">${p.productName}</h5>
                                <p class="card-text text-danger fw-bold fs-5 mt-auto">${p.price} VNĐ</p>
                                <a href="${pageContext.request.contextPath}/product-detail?id=${p.productId}" class="btn btn-primary mt-2">Xem chi tiết</a>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </c:when>
            <c:otherwise>
                <div class="col-12">
                    <div class="alert alert-secondary text-center" role="alert">
                        Chưa có sản phẩm nào trong hệ thống.
                    </div>
                </div>
            </c:otherwise>
        </c:choose>
    </div>
</body>
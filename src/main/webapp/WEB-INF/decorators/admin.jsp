<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <title><sitemesh:write property='title'/></title>
    <sitemesh:write property='head'/>
</head>
<body class="bg-dark text-light d-flex flex-column min-vh-100">

    <%@ include file="/common/header.jsp"%>

    <div class="container-fluid flex-grow-1 mt-4">
        <div class="row">
            <nav class="col-md-3 col-lg-2 d-md-block bg-secondary sidebar collapse rounded shadow p-3 ms-3">
                <div class="position-sticky pt-3">
                    <h5 class="text-warning text-center border-bottom border-light pb-2 mb-3">ADMIN MENU</h5>
                    <ul class="nav flex-column">
                        <li class="nav-item mb-2">
                            <a class="nav-link text-light btn btn-outline-dark text-start" href="${pageContext.request.contextPath}/admin/categories">
                                📁 Quản lý Danh mục
                            </a>
                        </li>
                        <li class="nav-item mb-2">
                            <a class="nav-link text-light btn btn-outline-dark text-start" href="${pageContext.request.contextPath}/admin/product">
                                🛒 Quản lý Sản phẩm
                            </a>
                        </li>
                    </ul>
                </div>
            </nav>

            <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
                <sitemesh:write property="body"/>
            </main>
        </div>
    </div>

    <%@ include file="/common/footer.jsp"%>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
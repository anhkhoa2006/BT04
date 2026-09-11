<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<nav class="navbar navbar-expand-lg navbar-dark bg-secondary mb-4 shadow-sm">
    <div class="container">
        <a class="navbar-brand fw-bold text-warning d-flex align-items-center" href="${pageContext.request.contextPath}/home">
            <i class="fa-solid fa-store me-2"></i> AK Store
        </a>
        
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>
        
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto align-items-center">
                <li class="nav-item">
                    <a class="nav-link text-light" href="${pageContext.request.contextPath}/home">
                        <i class="fa-solid fa-house me-1"></i> Trang chủ
                    </a>
                </li>
                
                <c:choose>
                    <c:when test="${not empty sessionScope.account}">
                        <li class="nav-item ms-lg-2">
                            <a class="nav-link text-light d-flex align-items-center" href="${pageContext.request.contextPath}/profile">
                                <c:choose>
                                    <c:when test="${not empty sessionScope.account.images}">
                                        <c:choose>
                                            <c:when test="${sessionScope.account.images.startsWith('http')}">
                                                <img src="${sessionScope.account.images}" alt="avatar" class="rounded-circle me-2 border border-warning" style="width: 32px; height: 32px; object-fit: cover;">
                                            </c:when>
                                            <c:otherwise>
                                                <img src="${pageContext.request.contextPath}/${sessionScope.account.images}" alt="avatar" class="rounded-circle me-2 border border-warning" style="width: 32px; height: 32px; object-fit: cover;">
                                            </c:otherwise>
                                        </c:choose>
                                    </c:when>
                                    <c:otherwise>
                                        <i class="fa-solid fa-circle-user fs-5 me-1 text-warning"></i>
                                    </c:otherwise>
                                </c:choose>
                                <span>${not empty sessionScope.account.fullname ? sessionScope.account.fullname : sessionScope.account.username}</span>
                            </a>
                        </li>
                        <li class="nav-item ms-lg-2">
                            <a class="btn btn-warning fw-bold text-dark btn-sm" href="${pageContext.request.contextPath}/admin/product">
                                <i class="fa-solid fa-shield-halved me-1"></i> Quản trị
                            </a>
                        </li>
                        <li class="nav-item ms-lg-2">
                            <a class="btn btn-danger fw-bold btn-sm" href="${pageContext.request.contextPath}/login">
                                <i class="fa-solid fa-right-from-bracket me-1"></i> Đăng xuất
                            </a>
                        </li>
                    </c:when>
                    <c:otherwise>
                        <li class="nav-item ms-lg-2">
                            <a class="btn btn-outline-warning btn-sm" href="${pageContext.request.contextPath}/login">
                                <i class="fa-solid fa-right-to-bracket me-1"></i> Đăng nhập
                            </a>
                        </li>
                        <li class="nav-item ms-lg-2">
                            <a class="btn btn-warning btn-sm fw-bold text-dark" href="${pageContext.request.contextPath}/register">
                                <i class="fa-solid fa-user-plus me-1"></i> Đăng ký
                            </a>
                        </li>
                    </c:otherwise>
                </c:choose>
            </ul>
        </div>
    </div>
</nav>
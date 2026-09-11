<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<head>
    <title>Hồ sơ cá nhân - AK Store</title>
</head>
<body>
    <div class="row justify-content-center">
        <div class="col-lg-10">
            <nav aria-label="breadcrumb" class="mb-4">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/home" class="text-warning text-decoration-none">Trang chủ</a></li>
                    <li class="breadcrumb-item active text-light" aria-current="page">Hồ sơ cá nhân</li>
                </ol>
            </nav>

            <c:if test="${not empty message}">
                <div class="alert alert-success alert-dismissible fade show" role="alert">
                    <i class="fa-solid fa-circle-check me-2"></i>${message}
                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                </div>
            </c:if>

            <c:if test="${not empty error}">
                <div class="alert alert-danger alert-dismissible fade show" role="alert">
                    <i class="fa-solid fa-triangle-exclamation me-2"></i>${error}
                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                </div>
            </c:if>

            <div class="row g-4">
                <!-- Cột thông tin tóm tắt & Avatar preview -->
                <div class="col-md-4">
                    <div class="card bg-secondary text-white shadow text-center p-4 border-0">
                        <div class="position-relative d-inline-block mx-auto mb-3">
                            <c:choose>
                                <c:when test="${not empty user.images}">
                                    <c:choose>
                                        <c:when test="${user.images.startsWith('http')}">
                                            <img id="avatarPreview" src="${user.images}" alt="Avatar" class="rounded-circle border border-warning shadow" style="width: 140px; height: 140px; object-fit: cover;">
                                        </c:when>
                                        <c:otherwise>
                                            <img id="avatarPreview" src="${pageContext.request.contextPath}/${user.images}" alt="Avatar" class="rounded-circle border border-warning shadow" style="width: 140px; height: 140px; object-fit: cover;">
                                        </c:otherwise>
                                    </c:choose>
                                </c:when>
                                <c:otherwise>
                                    <img id="avatarPreview" src="https://via.placeholder.com/140?text=Avatar" alt="Avatar" class="rounded-circle border border-warning shadow" style="width: 140px; height: 140px; object-fit: cover;">
                                </c:otherwise>
                            </c:choose>
                        </div>
                        <h4 class="text-warning mb-1">${not empty user.fullname ? user.fullname : user.username}</h4>
                        <p class="text-light-50 small mb-3">@${user.username}</p>
                        
                        <div class="badge bg-success py-2 px-3 mb-3">
                            <i class="fa-solid fa-check-circle me-1"></i> Tài khoản đã kích hoạt
                        </div>

                        <hr class="border-light opacity-25 my-3">
                        <div class="text-start small">
                            <p class="mb-2"><i class="fa-solid fa-envelope me-2 text-warning"></i>${user.email}</p>
                            <p class="mb-0"><i class="fa-solid fa-phone me-2 text-warning"></i>${not empty user.phone ? user.phone : 'Chưa cập nhật SĐT'}</p>
                        </div>
                    </div>
                </div>

                <!-- Cột Form cập nhật -->
                <div class="col-md-8">
                    <div class="card bg-secondary text-white shadow p-4 border-0">
                        <h4 class="text-warning fw-bold mb-4 border-bottom border-light pb-2">
                            <i class="fa-solid fa-user-pen me-2"></i>CẬP NHẬT THÔNG TIN CÁ NHÂN
                        </h4>

                        <form action="${pageContext.request.contextPath}/profile" method="post" enctype="multipart/form-data">
                            <div class="row g-3">
                                <div class="col-md-6">
                                    <label class="form-label text-light fw-semibold">Tên đăng nhập:</label>
                                    <input type="text" class="form-control bg-dark text-muted border-secondary" value="${user.username}" readonly>
                                    <small class="text-muted">Không thể thay đổi username</small>
                                </div>

                                <div class="col-md-6">
                                    <label class="form-label text-light fw-semibold">Email:</label>
                                    <input type="email" class="form-control bg-dark text-muted border-secondary" value="${user.email}" readonly>
                                    <small class="text-muted">Liên hệ admin nếu muốn đổi email</small>
                                </div>

                                <div class="col-12">
                                    <label class="form-label text-light fw-semibold">Họ và tên <span class="text-danger">*</span>:</label>
                                    <div class="input-group">
                                        <span class="input-group-text bg-dark text-light border-secondary"><i class="fa-solid fa-id-card"></i></span>
                                        <input type="text" class="form-control bg-dark text-light border-secondary ${not empty errors.fullname ? 'is-invalid' : ''}" 
                                               name="fullname" 
                                               placeholder="Nhập họ và tên đầy đủ..." 
                                               value="${not empty param.fullname ? param.fullname : user.fullname}" required>
                                    </div>
                                    <c:if test="${not empty errors.fullname}">
                                        <small class="text-danger mt-1 d-block"><i class="fa-solid fa-circle-exclamation me-1"></i>${errors.fullname}</small>
                                    </c:if>
                                </div>

                                <div class="col-12">
                                    <label class="form-label text-light fw-semibold">Số điện thoại:</label>
                                    <div class="input-group">
                                        <span class="input-group-text bg-dark text-light border-secondary"><i class="fa-solid fa-phone"></i></span>
                                        <input type="text" class="form-control bg-dark text-light border-secondary ${not empty errors.phone ? 'is-invalid' : ''}" 
                                               name="phone" 
                                               placeholder="VD: 0912345678" 
                                               value="${not empty param.phone ? param.phone : user.phone}">
                                    </div>
                                    <c:if test="${not empty errors.phone}">
                                        <small class="text-danger mt-1 d-block"><i class="fa-solid fa-circle-exclamation me-1"></i>${errors.phone}</small>
                                    </c:if>
                                </div>

                                <div class="col-12">
                                    <label class="form-label text-light fw-semibold">Ảnh đại diện (Avatar):</label>
                                    <div class="input-group">
                                        <span class="input-group-text bg-dark text-light border-secondary"><i class="fa-solid fa-image"></i></span>
                                        <input type="file" class="form-control bg-dark text-light border-secondary ${not empty errors.images ? 'is-invalid' : ''}" 
                                               id="imageInput" 
                                               name="images" 
                                               accept="image/png, image/jpeg, image/jpg, image/gif">
                                    </div>
                                    <small class="text-light opacity-75 d-block mt-1">Định dạng hỗ trợ: JPG, PNG, GIF. Kích thước tối đa: 5MB.</small>
                                    <c:if test="${not empty errors.images}">
                                        <small class="text-danger mt-1 d-block"><i class="fa-solid fa-circle-exclamation me-1"></i>${errors.images}</small>
                                    </c:if>
                                </div>

                                <div class="col-12 mt-4 d-flex justify-content-between">
                                    <a href="${pageContext.request.contextPath}/home" class="btn btn-outline-light">
                                        <i class="fa-solid fa-arrow-left me-1"></i> Quay lại
                                    </a>
                                    <button type="submit" class="btn btn-warning fw-bold text-dark px-4">
                                        <i class="fa-solid fa-floppy-disk me-1"></i> Lưu thay đổi
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        // Preview ảnh khi người dùng chọn file
        document.getElementById('imageInput').addEventListener('change', function(e) {
            const file = e.target.files[0];
            if (file) {
                const reader = new FileReader();
                reader.onload = function(event) {
                    document.getElementById('avatarPreview').src = event.target.result;
                };
                reader.readAsDataURL(file);
            }
        });
    </script>
</body>

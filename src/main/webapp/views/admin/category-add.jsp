<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<html>
<head>
<title>Thêm Danh Mục Mới</title>
</head>
<body>
	<div class="row justify-content-center mt-4">
		<div class="col-md-6">
			<a href="${pageContext.request.contextPath}/admin/categories"
				class="btn btn-outline-info mb-3">← Quay lại danh sách</a>

			<div class="card bg-dark text-light border-secondary shadow">
				<div
					class="card-header bg-secondary text-warning text-center fw-bold fs-5">
					THÊM DANH MỤC MỚI</div>
				<div class="card-body p-4">
					<form
						action="${pageContext.request.contextPath}/admin/category/insert"
						method="post" enctype="multipart/form-data">
						<div class="mb-3">
							<label class="form-label text-info fw-bold">Tên danh mục:</label>
							<input type="text"
								class="form-control bg-dark text-light border-secondary"
								name="categoryname" required placeholder="Nhập tên danh mục...">
						</div>

						<div class="mb-3">
							<label class="form-label text-info fw-bold">Upload Hình ảnh từ máy tính (images1):</label> <input type="file"
								class="form-control bg-dark text-light border-secondary"
								name="images1">
						</div>

						<div class="mb-3">
							<label class="form-label text-info fw-bold">Hoặc nhập Link hình ảnh (URL):</label> <input type="text"
								class="form-control bg-dark text-light border-secondary"
								name="images" placeholder="Nhập link hình ảnh...">
						</div>

						<div class="mb-4">
							<label class="form-label text-info fw-bold">Trạng thái:</label> <select
								class="form-select bg-dark text-light border-secondary"
								name="status">
								<option value="1">Hoạt động</option>
								<option value="0">Khóa</option>
							</select>
						</div>

						<button type="submit" class="btn btn-success w-100 fw-bold py-2">LƯU
							DANH MỤC</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<html>
<head>
<title>Cập nhật Danh Mục</title>
</head>
<body>
	<div class="row justify-content-center mt-4">
		<div class="col-md-6">
			<a href="${pageContext.request.contextPath}/admin/categories"
				class="btn btn-outline-info mb-3">← Quay lại danh sách</a>

			<div class="card bg-dark text-light border-secondary shadow">
				<div
					class="card-header bg-secondary text-warning text-center fw-bold fs-5">
					CẬP NHẬT DANH MỤC</div>
				<div class="card-body p-4">
					<form
						action="${pageContext.request.contextPath}/admin/category/update"
						method="post" enctype="multipart/form-data">
						<input type="hidden" name="categoryid" value="${cate.categoryid}">

						<div class="mb-3">
							<label class="form-label text-info fw-bold">Tên danh mục:</label>
							<input type="text"
								class="form-control bg-dark text-light border-secondary"
								name="categoryname" required value="${cate.categoryname}">
						</div>

						<div class="mb-3">
							<label class="form-label text-info fw-bold">Đổi Hình ảnh từ máy tính:</label> <input type="file"
								class="form-control bg-dark text-light border-secondary"
								name="images1">
							<div class="mt-2 text-muted">
								<small>Ảnh hiện tại: <img src="${cate.images}"
									alt="current" height="40"></small>
							</div>
						</div>

						<div class="mb-3">
							<label class="form-label text-info fw-bold">Hoặc dùng link (URL):</label> <input type="text"
								class="form-control bg-dark text-light border-secondary"
								name="images" value="${cate.images}">
						</div>

						<div class="mb-4">
							<label class="form-label text-info fw-bold">Trạng thái:</label> <select
								class="form-select bg-dark text-light border-secondary"
								name="status">
								<option value="1" ${cate.status == 1 ? 'selected' : ''}>Hoạt động</option>
								<option value="0" ${cate.status == 0 ? 'selected' : ''}>Khóa</option>
							</select>
						</div>

						<button type="submit" class="btn btn-success w-100 fw-bold py-2">CẬP NHẬT</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
<%@ page import="com.example.javsvlet.entity.Category" %><%
    request.setCharacterEncoding("UTF-8");
    Category category = (Category)request.getAttribute("category");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="/admin/include/head.jsp">
        <jsp:param name="title" value="Sửa sản phẩm"/>
    </jsp:include>
</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">
    <!-- Navbar -->
    <jsp:include page="/admin/include/header.jsp"/>

    <jsp:include page="/admin/include/aside.jsp"/>

    <div class="content-wrapper">
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1>Edit Category</h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active">Edit category</li>
                        </ol>
                    </div>
                </div>
            </div>
        </section>
        <section class="content">
            <div class="container-fluid">
                <div class="row">
                    <!-- left column -->
                    <div class="col-md-10">
                        <!-- general form elements -->
                        <div class="card card-primary">
                            <!-- form start -->
                            <form action="/admin/edit-category" method="post">
                                <div class="card-body">
                                       <input type="hidden" name="id" class="form-control" id="id" value="<%=category.getId()%>">
                                    <div class="form-group">
                                        <label for="ProductName">Category Name</label>
                                        <input type="text" name="name" class="form-control" id="ProductName" value="<%=category.getName()%>">
                                    </div>
                                </div>
                                <!-- /.card-body -->
                                <div class="card-footer">
                                    <button type="submit" class="btn btn-primary">Save</button>
                                </div>
                            </form>
                        </div>
                    </div>

                </div>
            </div>
        </section>
    </div>
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<jsp:include page="/admin/include/script.jsp"/>
</body>
</html>
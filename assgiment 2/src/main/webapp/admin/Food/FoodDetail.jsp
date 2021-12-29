<%@ page import="com.example.javsvlet.entity.Food" %>
<%@ page import="com.example.javsvlet.util.ConvertHelper" %>
<%
    request.setCharacterEncoding("UTF-8");
    Food food = (Food) request.getAttribute("food");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="/admin/include/head.jsp">
        <jsp:param name="title" value="Thông tin Sản Phẩm"/>
    </jsp:include>
</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">
    <!-- Navbar -->
    <jsp:include page="/admin/include/header.jsp"/>
    <!-- /.navbar -->

    <!-- Main Sidebar Container -->
    <jsp:include page="/admin/include/aside.jsp"/>
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1>Detail Food</h1>
                        <a href="/admin/list-food">Back To List</a>
                    </div>
                </div>
            </div><!-- /.container-fluid -->
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">
                <div class="row">
                    <!-- left column -->
                    <div class="col-md-10">
                        <!-- general form elements -->
                        <div class="card card-primary">
                            <!-- form start -->
                            <div class="card-body">
                                <div class="form-group">
                                    <label for="ProductName">Tên Sản phẩm</label>
                                    <input type="text" class="form-control" value="<%= food.getName()%>" id="ProductName" readonly>
                                </div>
                                <div class="form-group">
                                    <label for="Description">Mô tả sản phẩm</label>
                                    <input type="text" class="form-control" value="<%= food.getDescription()%>" id="Description" readonly/>
                                </div>
                                <div class="form-group">
                                    <label for="Price">Giá</label>
                                    <input type="text" class="form-control" value="<%= food.getPrice()%>" id="Price" readonly>
                                </div>
                                <div class="form-group">
                                    <p class="label">Ảnh</p>
                                    <image src="<%= food.getThumbnail()%>" style="width: 300px"/>
                                </div>
                                <div class="form-group">
                                    <label for="Create">Ngày Tạo</label>
                                    <input type="text" class="form-control" value="<%= ConvertHelper.convertJavaDateToSqlDate(food.getCreated_at())%>" id="Create" readonly>
                                </div>
                                <div class="form-group">
                                    <label for="Update">Ngày Update</label>
                                    <%
                                        if (food.getUpdated_at() == null){
                                    %>
                                    <input type="text" class="form-control" value="chưa cập nhật" id="Update" readonly>
                                    <%
                                        }
                                    %>
                                    <%
                                        if (food.getUpdated_at() != null){
                                    %>
                                    <input type="text" class="form-control" value="<%= ConvertHelper.convertJavaDateToSqlDate(food.getUpdated_at())%>" id="Update" readonly>
                                    <%
                                        }
                                    %>
                                </div>
                                <div class="form-group">
                                    <label for="Price">Trạng Thái</label>
                                    <input type="text" class="form-control" value="<%= food.getStatus()%>" id="Status" readonly>
                                </div>
                            </div>
                            <!-- /.card-body -->
                        </div>
                    </div>

                </div>
                <!-- /.row -->
            </div><!-- /.container-fluid -->
        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->
    <footer class="main-footer">
        <div class="float-right d-none d-sm-block">
            <b>Version</b> 3.1.0
        </div>
        <strong>Copyright &copy; 2014-2021 <a href="https://adminlte.io">AdminLTE.io</a>.</strong> All rights reserved.
    </footer>

    <!-- Control Sidebar -->
    <aside class="control-sidebar control-sidebar-dark">
        <!-- Control sidebar content goes here -->
    </aside>
    <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<jsp:include page="/admin/include/script.jsp"/>
</body>
</html>
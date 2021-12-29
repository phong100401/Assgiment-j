<%@ page import="com.example.javsvlet.entity.Food" %>
<%@ page import="com.example.javsvlet.entity.Category" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.javsvlet.repository.JpaRepository" %><%
    request.setCharacterEncoding("UTF-8");
    ArrayList<Food> list = (ArrayList<Food>)request.getAttribute("product");
    JpaRepository<Category> repository = new JpaRepository<>(Category.class);
    int totalPage = (int) request.getAttribute("totalPage");
    int pageNumber = (int) request.getAttribute("page");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="/admin/include/head.jsp">
        <jsp:param name="title" value="Danh Sách Sản Phẩm"/>
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
                        <h1>List Food</h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="/admin/list-food">Home</a></li>
                            <li class="breadcrumb-item active">List Food</li>
                        </ol>
                    </div>
                </div>
            </div><!-- /.container-fluid -->
        </section>
        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">
                <!-- /.row -->
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-header">
                                <div class="card-tools">
                                    <button type="submit" class="btn btn-default">
                                        <a href="/admin/create-food" >Thêm món ăn mới</a>
                                    </button>
                                </div>
                                <div class="input-group">
                                    <div class="form-outline">
                                        <input type="search" id="form1" class="form-control" />
                                    </div>
                                    <button type="button" class="btn btn-primary">
                                        <i class="fas fa-search"></i>
                                    </button>
                                </div>
                            </div>
                            <!-- /.card-header -->
                            <div class="card-body table-responsive p-0">
                                <table class="table table-hover text-nowrap">
                                    <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Tên Món Ăn</th>
                                        <th>Đơn giá</th>
                                        <th>Mô tả sản phẩm</th>
                                        <th>Mã danh mục</th>
                                        <th>Ảnh</th>
                                        <th>Trạng thái</th>
                                        <th>Tùy chọn</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <%
                                        for (int i = 0; i < list.size(); i++){
                                    %>
                                    <tr>
                                        <th><%= list.get(i).getId()%></th>
                                        <th><%= list.get(i).getName()%></th>
                                        <th><%= list.get(i).getPrice()%></th>
                                        <th><%= list.get(i).getDescription()%></th>
                                        <% Category category = repository.findById(list.get(i).getCategoryId());%>
                                        <th><%= category.getName()%></th>
                                        <th><img src="<%= list.get(i).getThumbnail()%>" style="width: 100px"> </th>
                                        <%
                                            if (list.get(i).getStatus() == 1){
                                        %>
                                        <th>
                                            Đang Bán
                                        </th>
                                        <%
                                            }
                                        %>
                                        <%
                                            if (list.get(i).getStatus() == 0){
                                        %>
                                        <th>Dừng Bán</th>
                                        <%
                                            }
                                        %>
                                        <%
                                            if (list.get(i).getStatus() == -1){
                                        %>
                                        <th>Đã xóa</th>
                                        <%
                                            }
                                        %>
                                        <th>
                                            <a href="/admin/edit-food?id=<%= list.get(i).getId()%>"><i class="fa fa-pencil" aria-hidden="true" style="font-size: 30px"></i></a>&nbsp;
                                            <a href="/admin/detail-food?id=<%= list.get(i).getId()%>"><i class="fa fa-asterisk" aria-hidden="true"style="font-size: 30px"></i></a>&nbsp;
                                            <a onclick="deleteFood(<%= list.get(i).getId()%>)"
                                               href="#"><i class="fa fa-trash-o" aria-hidden="true" style="font-size: 30px"></i></a>
                                        </th>
                                    </tr>
                                    <%
                                        }
                                    %>
                                    </tbody>
                                </table>
                                <div class="ml-3 mt-3">
                                    <nav aria-label="Page navigation example">
                                        <ul class="pagination">
                                            <li class="page-item"><a class="page-link" href="">-</a></li>
                                            <%
                                                for (int i = 1; i <= totalPage; i++) {
                                            %>
                                            <li class="page-item"><a class="page-link" href="/admin/list-food?page=<%=i%>"><%= i%></a></li>
                                            <%
                                                }
                                            %>
                                            <li class="page-item"><a class="page-link" href="">+</a></li>
                                        </ul>
                                    </nav>
                                </div>
                            </div>
                            <!-- /.card-body -->
                        </div>
                        <!-- /.card -->
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
<script>
    function deleteFood(id){
        if (confirm("bạn có muốn xóa sản phầm")){
            var xhr = new XMLHttpRequest();
            xhr.onreadystatechange = function (){
                if (xhr.readyState == 4 && xhr.status == 200){
                    alert("xóa thành công !!");
                    window.location.reload();
                }
            };
            xhr.open('DELETE', '/admin/delete-food?id='  +id);
            xhr.send();
        }
    }
</script>
</body>
</html>
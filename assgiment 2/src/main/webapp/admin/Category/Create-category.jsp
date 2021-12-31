<%@ page import="com.example.javsvlet.entity.Food" %><%
    request.setCharacterEncoding("UTF-8");
    Food food = (Food) request.getAttribute("products");
    food = new Food();
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="/admin/include/head.jsp">
        <jsp:param name="title" value="Tạo sản phẩm"/>
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
                        <h1>Create new Category</h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active">Create category</li>
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
                            <form action="/admin/create-category" method="post">
                                <div class="card-body">
                                    <%-- <div class="form-group" hidden>
                                       <label for="ID"> ID</label>
                                       <input type="text" name="ID" class="form-control" id="ID">
                                     </div>--%>
                                    <div class="form-group">
                                        <label for="ProductName">Category Name</label>
                                        <input type="text" name="name" class="form-control" <%= food.getName()%>  id="ProductName" required>
                                    </div>
                                </div>
                                <!-- /.card-body -->
                                <div class="card-footer">
                                    <button type="submit" class="btn btn-primary">Submit</button>
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

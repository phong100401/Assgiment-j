<%@ page import="com.example.javsvlet.entity.Food" %>
<%@ page import="com.example.javsvlet.entity.Category" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
<%
    request.setCharacterEncoding("utf-8");
    Food food = (Food) request.getAttribute("product");
    HashMap<String,String> errors = (HashMap<String, String>)request.getAttribute("errors");
    ArrayList<Category> categories = (ArrayList<Category>) request.getAttribute("categories");
    if(food == null){
        food = new Food();
    }
    if(errors == null){
        errors = new HashMap<>();
    }
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
                        <h1>Create New Food</h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active">Create New Food</li>
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
                            <%
                                if (errors.size() > 0){
                            %>
                            <div class="w3-panel w3-pale-red w3-border">
                                <h4>Vui lòng sửa lỗi bên dưới</h4>
                                <ul>
                                    <%
                                        for (Map.Entry<String, String> entry: errors.entrySet()
                                        ) {


                                    %>
                                    <li><%=entry.getValue()%></li>
                                    <%
                                        }
                                    %>
                                </ul>
                            </div>
                            <%
                                }
                            %>
                            <form action="/admin/create-food" method="post">
                                <div class="card-body">
                                    <%-- <div class="form-group" hidden>
                                       <label for="ID"> ID</label>
                                       <input type="text" name="ID" class="form-control" id="ID">
                                     </div>--%>
                                    <div class="form-group">
                                        <label for="ProductName">Tên sản phẩm</label>
                                        <input type="text" name="name" class="form-control"   id="ProductName" value="<%=food.getName()%>" required>
                                        <%
                                            if (errors.containsKey("name")) {
                                        %>
                                        <span class="badge bg-danger"><%= errors.get("name")%></span>
                                        <%
                                            }
                                        %>
                                    </div>
                                    <div class="form-group">
                                        <label for="Description">Mô tả sản phẩm</label>
                                        <input type="text" name="description" id="Description" class="form-control" value="<%=food.getDescription()%>" required/>
                                    </div>
                                    <div class="form-group">
                                        <label for="Price">Giá</label>
                                        <input type="text" name="price" class="form-control"  id="Price" value="<%=food.getPrice()%>" required>
                                        <%
                                            if (errors.containsKey("price")) {
                                        %>
                                        <span class="badge bg-danger"><%= errors.get("price")%></span>
                                        <%
                                            }
                                        %>
                                    </div>
                                    <div class="form-group">
                                        <label for="Image">Ảnh</label>
                                        <input type="text" name="image" class="form-control"  id="Image" value="<%=food.getThumbnail()%>" required>
                                        <%
                                            if (errors.containsKey("thumbnail")) {
                                        %>
                                        <span class="badge bg-danger"><%= errors.get("thumbnail")%></span>
                                        <%
                                            }
                                        %>
                                    </div>
                                    <div class="form-group">
                                        <label for="Status">Trạng thái</label>
                                        <input type="number" name="status" class="form-control" id="Status" value="<%=food.getStatus()%>" required>
                                    </div>
                                    <div class="form-group">
                                        <label for="Category">Loại</label>
                                        <select name="category" id="Category">
                                            <%
                                                for (int i = 0; i < categories.size(); i++) {
                                            %>
                                            <option value="<%= categories.get(i).getId()%>"><%= categories.get(i).getName()%></option>
                                            <%
                                                }
                                            %>
                                        </select>
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
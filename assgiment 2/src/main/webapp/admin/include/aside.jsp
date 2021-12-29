<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.javsvlet.entity.Category" %>
<%@ page import="com.example.javsvlet.repository.JpaRepository" %>
<%
    request.setCharacterEncoding("utf-8");
    JpaRepository<Category> repositoryCategory = new JpaRepository<>(Category.class);
    ArrayList<Category> categories = (ArrayList<Category>) repositoryCategory.findAll();
%>
<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="/admin/list-product" class="brand-link">
        <img src="/admin/resources/dist/img/266719238_453442823066506_3981174963939231817_n.jpg" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
        <span class="brand-text font-weight-light">Food</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
        <!-- Sidebar user (optional) -->
        <div class="user-panel mt-3 pb-3 mb-3 d-flex">
            <div class="image">
                <img src="/admin/resources/dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
            </div>
            <div class="info">
                <a href="#" class="d-block">Welcome Admin</a>
            </div>
        </div>
        <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                <li class="nav-item">
                    <a href="#" class="nav-link">
                        <i class="nav-icon fas fa-book"></i>
                        <p>
                            Quản lý danh mục
                        </p>
                    </a>
                    <ul>
                        <li>
                            <a href="/admin/list-category" class="w3-bar-item w3-button w3-padding w3-blue"><i class="fa fa-list-ul" aria-hidden="true"></i>&nbsp; Danh sách category</a>

                            <li><a href="/admin/create-category" class="w3-bar-item w3-button w3-padding"><i class="fa fa-plus" aria-hidden="true"></i>&nbsp; Tạo mới category</a></li>
                        </li>
                        <li>
                            <a href="/admin/list-food" class="w3-bar-item w3-button w3-padding w3-blue"><i class="fa fa-list-ul" aria-hidden="true"></i>&nbsp; Danh sách món ăn</a>
                        <li><a href="/admin/create-food" class="w3-bar-item w3-button w3-padding"><i class="fa fa-plus" aria-hidden="true"></i>&nbsp; Tạo mới món ăn</a></li>
                        </li>
                    </ul>
                </li>
            </ul>
        </nav>
    </div>
    <!-- /.sidebar -->
</aside>
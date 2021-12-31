<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
<%@ page import="com.example.javsvlet.entity.Phone" %>
<%
    request.setCharacterEncoding("utf-8");
    Phone product=(Phone) request.getAttribute("product");
    if(product == null){
        product = new Phone();
    }
%>
<!DOCTYPE html>
<html>
<header>
    <jsp:include page="/admin/include/header.jsp">
        <jsp:param name="title" value="Creat New Food"/>
        <jsp:param name="description" value="Admin area"/>
        <jsp:param name="keywords" value="admin, page, ..."/>
    </jsp:include>
</header>
<body class="w3-light-grey">

<!-- Top container -->
<div class="w3-bar w3-top w3-black w3-large" style="z-index:4">
    <button class="w3-bar-item w3-button w3-hide-large w3-hover-none w3-hover-text-light-grey" onclick="w3_open();"><i class="fa fa-bars"></i>  Menu</button>
    <span class="w3-bar-item w3-right">Logo</span>
</div>
<jsp:include page="/admin/include/left-menu.jsp"/>
<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large w3-animate-opacity" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- !PAGE CONTENT! -->
<div class="w3-main" style="margin-left:300px;margin-top:43px;">

    <!-- Header -->
    <header class="w3-container" style="padding-top:22px">
        <h5><b><i class="fa fa-dashboard"></i> Creat</b></h5>
    </header>
    <form action="/admin/creat-phone" method="post" class="w3-container w3-card-4 w3-light-grey w3-text-blue w3-margin">
        <h2 class="w3-center">Add New Food</h2>

        <div class="w3-row w3-section">
            <div class="w3-col" style="width:50px"><i class="w3-xxlarge fa fa-user"></i></div>
            <div class="w3-rest">
                <input class="w3-input w3-border" name="name" type="text" placeholder=" Name">
            </div>
        </div>
        <div class="w3-row w3-section">
            <div class="w3-col" style="width:50px"><i class="w3-xxlarge fa fa-pencil"></i></div>
            <div class="w3-rest">
                <input class="w3-input w3-border" name="description" type="text" placeholder="Description">
            </div>
        </div>
        <div class="w3-row w3-section">
            <div class="w3-col" style="width:50px"><i class="fa fa-meetup w3-xxlarge" aria-hidden="true"></i></div>
            <div class="w3-rest">
                <label for="brand">Brand</label>
                <select name="brand"id="brand">
                    <option>Apple</option>
                   
                     <option>Samsung</option>
                     <option>Nokia</option>
                </select>
            </div>
        </div>
        <div class="w3-row w3-section">
            <div class="w3-col" style="width:50px"><i class="w3-xxlarge fa fa-money" aria-hidden="true"></i></div>
            <div class="w3-rest">
                <input class="w3-input w3-border" name="price" type="text" placeholder="Price">
            </div>
        </div>
        <div class="w3-row w3-section">
            <div class="w3-col" style="width:50px"><i class="w3-xxlarge fa fa-hand-o-right" aria-hidden="true"></i>
            </div>
            <div class="w3-rest">
                <input class="w3-input w3-border" name="status" type="text" placeholder="Status">
            </div>
        </div>

        <p class="w3-center">
            <button class="w3-button w3-section w3-blue w3-ripple"> Submit </button>
        </p>
    </form>

    <jsp:include page="/admin/include/footer.jsp"/>

    <!-- End page content -->
</div>

<jsp:include page="/admin/include/script.jsp"/>

</body>
</html>

<%
    request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<header>
    <jsp:include page="/admin/include/header.jsp">
        <jsp:param name="title" value="My admin"/>
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
        <h5><b><i class="fa fa-dashboard"></i> My List product</b></h5>
    </header>



    <jsp:include page="/admin/include/footer.jsp"/>

    <!-- End page content -->
</div>

<jsp:include page="/admin/include/script.jsp"/>

</body>
</html>
    
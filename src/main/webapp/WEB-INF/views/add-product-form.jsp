<%--
  Created by IntelliJ IDEA.
  User: arthe
  Date: 15-07-2022
  Time: 00:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="./base.jsp"%>
    <title>Add Product</title>
</head>
<body>
<div class="container mt-3">
    <div class="row">
        <div class="col -md-2 offset-md-2">
            <h1 class="text-center mb-3">Fill the product details</h1>
            <form action="handle-product" method="post">
                <div class="form-group">
                    <label for="productName">Product Name</label>
                    <input type="text" class="form-control" id="productName" aria-describedby="emailHelp"
                           name="productName"
                           placeholder="Enter the product name here">
                </div>
                <div class="form-group">
                    <label for="productDescription">Product Description</label>
                    <textarea class="form-control" name="productDescription" id="productDescription" rows="5"
                              placeholder="Enter the product description"> </textarea>
                </div>
                <div class="form-group">
                    <label for="productPrice">Product Price</label>
                    <input type="text" class="form-control" id="productPrice" name="productPrice"
                           placeholder="Enter product price">
                </div>
                <div class="container text-center">
                    <a href="${pageContext.request.contextPath}/" class="btn btn-outline-danger">Back</a>
                    <button type="submit" class="btn btn-primary">Add</button>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>

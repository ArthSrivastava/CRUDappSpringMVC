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
  <title>Update Product</title>
</head>
<body>
<div class="container mt-3">
  <div class="row">
    <div class="col -md-4 offset-md-3">
      <h1 class="text-center mb-3">Update the product details</h1>
      <form action="${pageContext.request.contextPath}/handle-product" method="post">
        <input type="hidden" name="productId" value="${product.productId}"/>
        <div class="form-group">
          <label for="productName">Product Name</label>
          <input type="text" class="form-control" id="productName" aria-describedby="emailHelp"
                 name="productName"
                 placeholder="Enter the product name here"
                 value="${product.productName}"
          >
        </div>
        <div class="form-group">
          <label for="productDescription">Product Description</label>
          <textarea class="form-control" name="productDescription" id="productDescription" rows="5"
                    placeholder="Enter the product description">${product.productDescription}</textarea>
        </div>
        <div class="form-group">
          <label for="productPrice">Product Price</label>
          <input type="text" class="form-control" id="productPrice" name="productPrice"
                 placeholder="Enter product price"
                 value="${product.productPrice}"
          >
        </div>
        <div class="container text-center">
          <a href="${pageContext.request.contextPath}/" class="btn btn-outline-danger">Back</a>
          <button type="submit" class="btn btn-primary">Update</button>
        </div>
      </form>
    </div>
  </div>
</div>
</body>
</html>

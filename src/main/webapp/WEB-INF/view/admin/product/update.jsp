<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Update Product</title>
    <link rel="stylesheet" href="<c:url value='/css/styles.css'/>">
</head>
<body>
    <h1>Update Product</h1>
    <form action="<c:url value='/admin/product/update'/>" method="post">
        <input type="hidden" name="id" value="${product.id}">
        <div>
            <label for="name">Product Name:</label>
            <input type="text" id="name" name="name" value="${product.name}" required>
        </div>
        <div>
            <label for="description">Description:</label>
            <textarea id="description" name="description" required>${product.description}</textarea>
        </div>
        <div>
            <label for="price">Price:</label>
            <input type="number" id="price" name="price" value="${product.price}" required>
        </div>
        <div>
            <label for="quantity">Quantity:</label>
            <input type="number" id="quantity" name="quantity" value="${product.quantity}" required>
        </div>
        <div>
            <button type="submit">Update</button>
        </div>
    </form>
</body>
</html>
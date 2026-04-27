<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="ProductFeedbackManagment.Products" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Products</title>

<style>
body{
margin:0;
padding:0;
font-family:Arial;
background:#f5f7fa;
}

/* Navbar */
.navbar{
background:#0d6efd;
padding:15px;
text-align:center;
box-shadow:0 2px 8px rgba(0,0,0,0.10);
}

.navbar a{
color:white;
text-decoration:none;
margin:15px;
font-size:18px;
font-weight:bold;
transition:0.3s;
}

.navbar a:hover{
color:#dce7ff;
}

/* Heading */
.title{
text-align:center;
font-size:40px;
margin:30px 0;
color:#222;
}

/* Search */
.search-box{
width:45%;
margin:0 auto 35px;
text-align:center;
}

.search-box input{
width:72%;
padding:12px;
border:1px solid #ccc;
border-radius:8px;
font-size:16px;
}

.search-box button{
padding:12px 18px;
background:#0d6efd;
color:white;
border:none;
border-radius:8px;
font-weight:bold;
cursor:pointer;
transition:0.3s;
}

.search-box button:hover{
background:#084298;
}

/* Products */
.products{
width:95%;
margin:auto;
display:flex;
flex-wrap:wrap;
justify-content:space-between;
gap:18px;
}

.card{
width:23%;
background:white;
border-radius:14px;
padding:18px;
margin-bottom:25px;
box-shadow:0 8px 18px rgba(0,0,0,0.08);
text-align:center;
transition:0.3s;
}

.card:hover{
transform:translateY(-8px);
box-shadow:0 14px 24px rgba(0,0,0,0.18);
}

.card img{
width:100%;
height:180px;
border-radius:10px;
transition:0.3s;
object-fit:cover;
}

.card:hover img{
transform:scale(1.05);
}

.card h3{
margin:15px 0 10px;
font-size:22px;
}

.price{
color:green;
font-size:24px;
font-weight:bold;
margin:8px 0;
}

.rating{
color:#ff9800;
font-size:18px;
margin:8px 0;
}

.btn{
background:#0d6efd;
color:white;
padding:10px 16px;
text-decoration:none;
border-radius:8px;
display:inline-block;
margin-top:10px;
font-weight:bold;
transition:0.3s;
}

.btn:hover{
background:#084298;
transform:scale(1.05);
}

/* Footer */
.footer{
background:#212529;
color:white;
text-align:center;
padding:18px;
margin-top:25px;
}
</style>

</head>
<body>

<form id="form1" runat="server">

<div class="navbar">
<a href="Default.aspx">Home</a>
<a href="Products.aspx">Products</a>
<a href="Feedback.aspx">Feedback</a>
<a href="Logout.aspx">Logout</a>
</div>

<h1 class="title">Our Products</h1>

<div class="search-box">
<input type="text" placeholder="Search Products..." />
<button type="button">Search</button>
</div>

<div class="products">

<div class="card">
<img src="Images/smartphone.jpg" />
<h3>Smartphone X</h3>
<p class="price">₹24,999</p>
<p class="rating">⭐⭐⭐⭐☆</p>
<a href="Feedback.aspx" class="btn">Give Feedback</a>
</div>

<div class="card">
<img src="Images/laptop.jpg" />
<h3>Laptop Pro</h3>
<p class="price">₹54,999</p>
<p class="rating">⭐⭐⭐⭐⭐</p>
<a href="Feedback.aspx" class="btn">Give Feedback</a>
</div>

<div class="card">
<img src="Images/earbuds.jpg" />
<h3>Wireless Earbuds</h3>
<p class="price">₹2,999</p>
<p class="rating">⭐⭐⭐⭐☆</p>
<a href="Feedback.aspx" class="btn">Give Feedback</a>
</div>

<div class="card">
<img src="Images/shoes.jpg" />
<h3>Sports Shoes</h3>
<p class="price">₹1,999</p>
<p class="rating">⭐⭐⭐⭐⭐</p>
<a href="Feedback.aspx" class="btn">Give Feedback</a>
</div>

<div class="card">
<img src="Images/watch.jpg" />
<h3>Smart Watch</h3>
<p class="price">₹3,499</p>
<p class="rating">⭐⭐⭐⭐☆</p>
<a href="Feedback.aspx" class="btn">Give Feedback</a>
</div>

<div class="card">
<img src="Images/skincare.jpg" />
<h3>Skin Care Kit</h3>
<p class="price">₹899</p>
<p class="rating">⭐⭐⭐⭐⭐</p>
<a href="Feedback.aspx" class="btn">Give Feedback</a>
</div>

<div class="card">
<img src="Images/chair.jpg" />
<h3>Office Chair</h3>
<p class="price">₹5,999</p>
<p class="rating">⭐⭐⭐⭐☆</p>
<a href="Feedback.aspx" class="btn">Give Feedback</a>
</div>

<div class="card">
<img src="Images/speaker.jpg" />
<h3>Bluetooth Speaker</h3>
<p class="price">₹1,499</p>
<p class="rating">⭐⭐⭐⭐⭐</p>
<a href="Feedback.aspx" class="btn">Give Feedback</a>
</div>

</div>

<div class="footer">
© 2026 Product Feedback Management System | Developed by Sanket
</div>

</form>
</body>
</html>
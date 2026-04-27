<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ProductFeedbackManagment._Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<style>
body{
    font-family:Arial;
    background:#f8f9fa;
}

/* Hero */
.hero{
    background:linear-gradient(to right,#0d6efd,#6610f2);
    color:white;
    padding:70px 40px;
    border-radius:12px;
    margin-top:20px;
    text-align:center;
}
.hero h1{
    font-size:48px;
    margin-bottom:15px;
}
.hero p{
    font-size:20px;
    margin-bottom:25px;
}
.btn-main{
    background:white;
    color:#0d6efd;
    padding:12px 25px;
    text-decoration:none;
    border-radius:6px;
    font-weight:bold;
    margin:8px;
    display:inline-block;
}
.btn-main:hover{
    background:#e9ecef;
}

/* Titles */
.title{
    text-align:center;
    font-size:34px;
    margin:45px 0 25px;
    color:#222;
}

/* Categories */
.categories{
    display:flex;
    justify-content:space-between;
    flex-wrap:wrap;
}
.cat-box{
    width:23%;
    background:white;
    padding:25px;
    border-radius:10px;
    box-shadow:0 0 10px rgba(0,0,0,0.08);
    text-align:center;
    margin-bottom:20px;
}
.cat-box h3{
    color:#0d6efd;
}

/* Products */
.products{
    display:flex;
    justify-content:space-between;
    flex-wrap:wrap;
}
.product{
    width:23%;
    background:white;
    border-radius:10px;
    padding:20px;
    box-shadow:0 0 10px rgba(0,0,0,0.08);
    text-align:center;
    margin-bottom:20px;
}
.product img{
    width:100%;
    height:170px;
    object-fit:cover;
    border-radius:8px;
}
.product h4{
    margin-top:15px;
}
.price{
    color:green;
    font-weight:bold;
    font-size:20px;
}
.rating{
    color:#ff9800;
    margin:10px 0;
}
.buy-btn{
    background:#0d6efd;
    color:white;
    padding:10px 18px;
    text-decoration:none;
    border-radius:5px;
    display:inline-block;
}
.buy-btn:hover{
    background:#0b5ed7;
}

/* Why */
.why{
    background:white;
    padding:35px;
    border-radius:12px;
    margin-top:30px;
    box-shadow:0 0 10px rgba(0,0,0,0.08);
}
.why ul{
    line-height:38px;
    font-size:18px;
}

/* Footer */
.footer-box{
    background:#212529;
    color:white;
    text-align:center;
    padding:20px;
    margin-top:45px;
    border-radius:8px;
}
</style>

<!-- HERO -->
<div class="hero">
    <h1>Smart Shopping Starts Here</h1>
    <p>Buy products with confidence using real customer ratings and trusted feedback.</p>

    <a href="Products.aspx" class="btn-main">Shop Now</a>
    <a href="Register.aspx" class="btn-main">Create Account</a>
</div>

<!-- Categories -->
<h2 class="title">Top Categories</h2>

<div class="categories">

<div class="cat-box">
<h3>📱 Electronics</h3>
<p>Mobiles, Laptops, Gadgets</p>
</div>

<div class="cat-box">
<h3>👕 Fashion</h3>
<p>Clothes, Shoes, Trends</p>
</div>

<div class="cat-box">
<h3>🏠 Home</h3>
<p>Furniture & Decor</p>
</div>

<div class="cat-box">
<h3>💄 Beauty</h3>
<p>Skincare & Essentials</p>
</div>

</div>

<!-- Featured Products -->
<h2 class="title">Featured Products</h2>

<div class="products">

<div class="product">
<img src="Images/smartphone.jpg" />
<h4>Smartphone Pro Max</h4>
<p class="price">₹24,999</p>
<p class="rating">⭐⭐⭐⭐☆</p>
<a href="Feedback.aspx" class="buy-btn">View Reviews</a>
</div>

<div class="product">
<img src="Images/earbuds.jpg" />
<h4>Wireless Headphones</h4>
<p class="price">₹2,499</p>
<p class="rating">⭐⭐⭐⭐⭐</p>
<a href="Feedback.aspx" class="buy-btn">View Reviews</a>
</div>

<div class="product">
<img src="Images/shoes.jpg" />
<h4>Sports Shoes</h4>
<p class="price">₹1,999</p>
<p class="rating">⭐⭐⭐⭐☆</p>
<a href="Feedback.aspx" class="buy-btn">View Reviews</a>
</div>

<div class="product">
<img src="Images/skincare.jpg" />
<h4>Skin Care Kit</h4>
<p class="price">₹899</p>
<p class="rating">⭐⭐⭐⭐⭐</p>
<a href="Feedback.aspx" class="buy-btn">View Reviews</a>
</div>

</div>

<!-- Why Us -->
<div class="why">
<h2 class="title">Why Customers Love Us</h2>

<ul>
<li>✔ Real Customer Feedback Before Buying</li>
<li>✔ Honest Ratings For Better Decisions</li>
<li>✔ Easy Product Comparison</li>
<li>✔ Secure User Login & Dashboard</li>
<li>✔ Admin Product Quality Monitoring</li>
<li>✔ Fast, Clean and Attractive Experience</li>
</ul>
</div>

<!-- Footer -->
<div class="footer-box">
© 2026 Product Feedback Management System | Developed by Sanket
</div>

</asp:Content>
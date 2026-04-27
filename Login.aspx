<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ProductFeedbackManagment.Login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>User Login</title>

<style>
body{
    margin:0;
    padding:0;
    font-family:Arial;
    background:#eef2f7;
}

.navbar{
    background:#0d6efd;
    padding:15px;
    text-align:center;
}
.navbar a{
    color:white;
    text-decoration:none;
    margin:15px;
    font-size:18px;
    font-weight:bold;
}

.login-box{
    width:40%;
    margin:60px auto;
    background:white;
    padding:35px;
    border-radius:12px;
    box-shadow:0 0 15px rgba(0,0,0,0.12);
}

.login-box h2{
    text-align:center;
    color:#0d6efd;
    margin-bottom:25px;
    font-size:34px;
}

.lbl{
    font-weight:bold;
    display:block;
    margin-top:10px;
}

.txt{
    width:100%;
    padding:12px;
    margin-top:8px;
    margin-bottom:18px;
    border:1px solid #ccc;
    border-radius:6px;
    font-size:16px;
}

.btn-login{
    width:100%;
    background:#0d6efd;
    color:white;
    padding:12px;
    border:none;
    border-radius:6px;
    font-size:18px;
    cursor:pointer;
}

.btn-login:hover{
    background:#0b5ed7;
}

.bottom-link{
    text-align:center;
    margin-top:18px;
}

.bottom-link a{
    color:#0d6efd;
    text-decoration:none;
    font-weight:bold;
}

.footer{
    background:#212529;
    color:white;
    text-align:center;
    padding:18px;
    margin-top:40px;
}
</style>

</head>

<body>

<form id="form1" runat="server">

<div class="navbar">
<a href="Default.aspx">Home</a>
<a href="Products.aspx">Products</a>
<a href="Register.aspx">Register</a>
<a href="Login.aspx">Login</a>
<a href="Feedback.aspx">Feedback</a>
<a href="AdminLogin.aspx">Admin</a>
</div>

<div class="login-box">

<h2>User Login</h2>

<label class="lbl">Email Address</label>
<asp:TextBox ID="txtEmail" runat="server" CssClass="txt"></asp:TextBox>

<label class="lbl">Password</label>
<asp:TextBox ID="txtPassword" runat="server" CssClass="txt" TextMode="Password"></asp:TextBox>

<asp:Button ID="btnLogin"
runat="server"
Text="Login Now"
CssClass="btn-login"
OnClick="btnLogin_Click" />

<div class="bottom-link">
New User?
<a href="Register.aspx">Create Account</a>
</div>

</div>

<div class="footer">
© 2026 Product Feedback Management System | Developed by Sanket
</div>

</form>
</body>
</html>
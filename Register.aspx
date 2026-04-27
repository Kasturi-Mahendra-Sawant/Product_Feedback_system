<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="ProductFeedbackManagment.Register" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Register</title>

<style>
body{
    margin:0;
    padding:0;
    font-family:Arial;
    background:#f1f5f9;
}

/* Navbar */
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

/* Register Box */
.register-box{
    width:45%;
    margin:40px auto;
    background:white;
    padding:35px;
    border-radius:12px;
    box-shadow:0 0 15px rgba(0,0,0,0.12);
}

.register-box h2{
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
    margin-bottom:15px;
    border:1px solid #ccc;
    border-radius:6px;
    font-size:16px;
}

.btn-reg{
    width:100%;
    background:#0d6efd;
    color:white;
    padding:12px;
    border:none;
    border-radius:6px;
    font-size:18px;
    cursor:pointer;
}

.btn-reg:hover{
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
    margin-top:30px;
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

<div class="register-box">

<h2>Create Account</h2>

<label class="lbl">Full Name</label>
<asp:TextBox ID="txtName" runat="server" CssClass="txt"></asp:TextBox>

<label class="lbl">Email Address</label>
<asp:TextBox ID="txtEmail" runat="server" CssClass="txt"></asp:TextBox>

<label class="lbl">Mobile Number</label>
<asp:TextBox ID="txtMobile" runat="server" CssClass="txt"></asp:TextBox>

<label class="lbl">Password</label>
<asp:TextBox ID="txtPassword" runat="server" CssClass="txt" TextMode="Password"></asp:TextBox>

<label class="lbl">Confirm Password</label>
<asp:TextBox ID="txtConfirm" runat="server" CssClass="txt" TextMode="Password"></asp:TextBox>

<label class="lbl">Address</label>
<asp:TextBox ID="txtAddress" runat="server" CssClass="txt" TextMode="MultiLine" Rows="3"></asp:TextBox>

<asp:Button ID="btnRegister" runat="server"
Text="Register Now"
CssClass="btn-reg"
OnClick="btnRegister_Click" />

<div class="bottom-link">
Already have account?
<a href="Login.aspx">Login Here</a>
</div>

</div>

<div class="footer">
© 2026 Product Feedback Management System | Developed by Sanket
</div>

</form>
</body>
</html>
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="ProductFeedbackManagment.Feedback" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Feedback</title>

<style>
body{
margin:0;
padding:0;
font-family:Arial;
background:#f4f6f9;
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

.feedback-box{
width:50%;
margin:40px auto;
background:white;
padding:35px;
border-radius:12px;
box-shadow:0 0 15px rgba(0,0,0,0.12);
}

.feedback-box h2{
text-align:center;
color:#0d6efd;
margin-bottom:25px;
font-size:34px;
}

.lbl{
font-weight:bold;
display:block;
margin-top:12px;
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

.btn-submit{
width:100%;
background:#0d6efd;
color:white;
padding:12px;
border:none;
border-radius:6px;
font-size:18px;
cursor:pointer;
}

.btn-submit:hover{
background:#0b5ed7;
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

<div class="feedback-box">

<h2>Submit Your Feedback</h2>

<label class="lbl">Select Product</label>
<asp:DropDownList ID="ddlProduct" runat="server" CssClass="txt">
<asp:ListItem>Smartphone X</asp:ListItem>
<asp:ListItem>Laptop Pro</asp:ListItem>
<asp:ListItem>Wireless Earbuds</asp:ListItem>
<asp:ListItem>Sports Shoes</asp:ListItem>
</asp:DropDownList>

<label class="lbl">Your Name</label>
<asp:TextBox ID="txtName" runat="server" CssClass="txt"></asp:TextBox>

<label class="lbl">Rating</label>
<asp:DropDownList ID="ddlRating" runat="server" CssClass="txt">
<asp:ListItem>1 Star</asp:ListItem>
<asp:ListItem>2 Star</asp:ListItem>
<asp:ListItem>3 Star</asp:ListItem>
<asp:ListItem>4 Star</asp:ListItem>
<asp:ListItem Selected="True">5 Star</asp:ListItem>
</asp:DropDownList>

<label class="lbl">Write Review</label>
<asp:TextBox ID="txtComment" runat="server" CssClass="txt"
TextMode="MultiLine" Rows="5"></asp:TextBox>

<asp:Button ID="btnSubmit"
runat="server"
Text="Submit Feedback"
CssClass="btn-submit"
OnClick="btnSubmit_Click" />

</div>

<div class="footer">
© 2026 Product Feedback Management System
</div>

</form>
</body>
</html>
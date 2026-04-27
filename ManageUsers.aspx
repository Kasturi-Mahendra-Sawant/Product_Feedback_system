<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageUsers.aspx.cs" Inherits="ProductFeedbackManagment.ManageUsers" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Manage Users</title>

<style>
body{margin:0;padding:0;font-family:Arial;background:#f4f6f9;}
.navbar{background:#dc3545;padding:15px;text-align:center;}
.navbar a{color:white;text-decoration:none;margin:15px;font-size:18px;font-weight:bold;}
.main{width:92%;margin:30px auto;background:white;padding:30px;border-radius:12px;}
h1{text-align:center;}
.footer{background:#212529;color:white;text-align:center;padding:18px;margin-top:30px;}
</style>

</head>
<body>

<form id="form1" runat="server">

<div class="navbar">
<a href="AdminDashboard.aspx">Dashboard</a>
<a href="ManageProducts.aspx">Products</a>
<a href="ManageUsers.aspx">Users</a>
<a href="ViewFeedback.aspx">Feedback</a>
<a href="Logout.aspx">Logout</a>
</div>

<div class="main">

<h1>Registered Users</h1>

<asp:GridView ID="GridView1"
runat="server"
Width="100%"
AutoGenerateColumns="False"
DataKeyNames="UserId"
OnRowDeleting="GridView1_RowDeleting">

<Columns>

<asp:BoundField DataField="UserId" HeaderText="ID" />
<asp:BoundField DataField="Name" HeaderText="Name" />
<asp:BoundField DataField="Email" HeaderText="Email" />
<asp:BoundField DataField="Mobile" HeaderText="Mobile" />
<asp:BoundField DataField="Address" HeaderText="Address" />

<asp:CommandField ShowDeleteButton="True" DeleteText="Delete" />

</Columns>

</asp:GridView>

</div>

<div class="footer">
© 2026 Product Feedback Management System
</div>

</form>
</body>
</html>
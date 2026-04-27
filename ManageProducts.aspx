<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageProducts.aspx.cs" Inherits="ProductFeedbackManagment.ManageProducts" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Manage Products</title>

<style>
body{
margin:0;
padding:0;
font-family:Arial;
background:#f5f7fa;
}

.navbar{
background:#dc3545;
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

.main-box{
width:90%;
margin:30px auto;
background:white;
padding:30px;
border-radius:12px;
box-shadow:0 0 12px rgba(0,0,0,0.10);
}

.title{
text-align:center;
font-size:36px;
margin-bottom:25px;
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
}

.btn{
background:#dc3545;
color:white;
padding:12px 20px;
border:none;
border-radius:6px;
margin-right:10px;
cursor:pointer;
}

.btn:hover{
background:#bb2d3b;
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
<a href="AdminDashboard.aspx">Dashboard</a>
<a href="ManageProducts.aspx">Manage Products</a>
<a href="ViewFeedback.aspx">View Feedback</a>
<a href="Logout.aspx">Logout</a>
</div>

<div class="main-box">

<h1 class="title">Manage Products</h1>

<asp:HiddenField ID="hfId" runat="server" />

<label class="lbl">Product Name</label>
<asp:TextBox ID="txtProduct" runat="server" CssClass="txt"></asp:TextBox>

<label class="lbl">Description</label>
<asp:TextBox ID="txtDesc" runat="server" CssClass="txt"></asp:TextBox>

<label class="lbl">Price</label>
<asp:TextBox ID="txtPrice" runat="server" CssClass="txt"></asp:TextBox>

<asp:Button ID="btnAdd" runat="server" Text="Add Product"
CssClass="btn" OnClick="btnAdd_Click" />

<asp:Button ID="btnUpdate" runat="server" Text="Update Product"
CssClass="btn" OnClick="btnUpdate_Click" />

<br /><br />

<asp:GridView ID="GridView1"
runat="server"
Width="100%"
AutoGenerateColumns="False"
DataKeyNames="ProductId"
OnRowDeleting="GridView1_RowDeleting"
OnSelectedIndexChanged="GridView1_SelectedIndexChanged">

<Columns>

<asp:BoundField DataField="ProductId" HeaderText="ID" />
<asp:BoundField DataField="ProductName" HeaderText="Product Name" />
<asp:BoundField DataField="Description" HeaderText="Description" />
<asp:BoundField DataField="Price" HeaderText="Price" />

<asp:CommandField ShowSelectButton="True" SelectText="Edit" />
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
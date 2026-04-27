<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Error.aspx.cs" Inherits="ProductFeedbackManagment.Error" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Error Page</title>

<style>
body{
    margin:0;
    padding:0;
    font-family:Arial;
    background:#f4f6f9;
}

/* Box */
.error-box{
    width:50%;
    margin:100px auto;
    background:white;
    padding:40px;
    text-align:center;
    border-radius:12px;
    box-shadow:0 0 15px rgba(0,0,0,0.12);
}

.error-box h1{
    font-size:70px;
    color:#dc3545;
    margin:0;
}

.error-box h2{
    font-size:32px;
    margin:10px 0;
}

.error-box p{
    font-size:18px;
    color:#555;
}

.btn{
    display:inline-block;
    margin-top:20px;
    background:#0d6efd;
    color:white;
    padding:12px 24px;
    text-decoration:none;
    border-radius:6px;
}

/* Footer */
.footer{
    background:#212529;
    color:white;
    text-align:center;
    padding:18px;
    margin-top:80px;
}
</style>

</head>

<body>

<form id="form1" runat="server">

<div class="error-box">

<h1>Oops!</h1>
<h2>Something Went Wrong</h2>

<p>The page you requested is unavailable or an unexpected error occurred.</p>

<a href="Default.aspx" class="btn">Go Back Home</a>

</div>

<div class="footer">
© 2026 Product Feedback Management System
</div>

</form>
</body>
</html>
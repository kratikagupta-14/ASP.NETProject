﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="NewspaperAsp.Net.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="Content/css/bootstrap.css" rel="stylesheet" />
    <link href="Content/css/SignIn.css" rel="stylesheet" />
    <style>
       body {
    background-image: url('~/Content/img/login-background.png');
}
    </style>
</head>
<body>
    <div class="container">
        <form class="form-signin" runat="server">
            <h3 class="alert alert-success">Newspaper Agency</h3>

            <label for="inputEmail" class="sr-only">User Name</label>
            <input type="text" id="inputEmail" class="form-control" placeholder="User Name" runat="server"
                required autofocus />

            <label for="inputPassword" class="sr-only">Password</label>
            <input type="password" runat="server" id="inputPassword" class="form-control" placeholder="Password"
                required />

            <asp:Button runat="server" CssClass="btn btn-lg btn-success btn-block" 
                Text="Sign In" ID="btnLogin" OnClick="btnLogin_Click" />
        </form>

    </div>
</body>
</html>

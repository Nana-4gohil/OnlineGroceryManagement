<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="OnlineGrocery.View.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link rel="stylesheet" href="../Assets/Lib/Bootstrap/css/bootstrap.min.css"/>
    <style type="text/css">
        .auto-style1 {
            max-width: 100%;
            height: auto;
            width: 373px;
        }
    </style>
</head>
<body>
 
  
    <div class="container-fluid">
        <div class="row" style= "height:90px"></div>
        <div class="row">
            <div class="col-md-2"> </div> 
            <div class="col-md-4">
                <img src="../Assets/Images/Grocery.jpg" class="auto-style1"/>
            </div>


            <div class="col-md-4">
                <h1>Sign Up</h1>
             <form runat="server">
              <div class="mb-3">
                <label for="exampleInputEmail1" class="form-label">Email address</label>&nbsp;
                 <asp:TextBox ID="emailTextBox" runat="server" OnTextChanged="TextBox1_TextChanged" class="form-control"></asp:TextBox>
              </div>
              <div class="mb-3">
                <label for="exampleInputPassword1" class="form-label">Password</label>
                  <asp:TextBox ID="PassTextBox" runat="server" class="form-control"></asp:TextBox>
              </div>
              <div class="mb-3 form-check">
                  <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" >
                      <asp:ListItem class="p-1">Admin</asp:ListItem>
                      <asp:ListItem class="p-1">Seller</asp:ListItem>
                  </asp:RadioButtonList>
                
              </div>
                 <div class="mb-3 d-grid">
                     <asp:Button ID="Button1" runat="server" Text="Login" class="btn btn-danger"/>

                 </div>
            </form>
            </div>
        </div>
    </div>
</body>
</html>

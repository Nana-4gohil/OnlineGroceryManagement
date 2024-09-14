<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="OnlineGrocery.View.Admin.Products" %>

<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-8">
                <br />
                <img src="../../Assets/Images/vegetarian_food.png" style="height: 162px" />
                <h3 class="text-danger">Manage Products</h3>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <h2>Products Details</h2>
                
                      <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Name</label>
                         <asp:TextBox ID="ProductNameTextBox" runat="server"  class="form-control"></asp:TextBox>
                      </div>
                      <div class="mb-3">
                        <label for="exampleInputPassword1" class="form-label">Category</label><asp:TextBox ID="ProductCatTextBox" runat="server" class="form-control"></asp:TextBox>
                      </div>
                      <div class="mb-3 >
                        <label for="exampleInputPassword1" class="form-label">&nbsp;Price </label>
                         <asp:TextBox ID="ProductCatTextBox0" runat="server" class="form-control"  ></asp:TextBox>

                      </div>
                  <div class="mb-3 ">
                    <label for="exampleInputPassword1" class="form-label">&nbsp;Quantity </label>
                     <asp:TextBox ID="TextBox1" runat="server" class="form-control" ></asp:TextBox>
                  </div>
                  <div class="mb-3">
                    <label for="exampleInputPassword1" class="form-label">Expiry Date </label>
                     <asp:TextBox ID="TextBox2" runat="server" class="form-control"  TextMode="Date" ></asp:TextBox>
                  </div>
                   
                        <asp:Button ID="Button1" runat="server" Text="Save" class="btn btn-danger"/>  
                        <asp:Button ID="Button2" runat="server" Text="Edit" class="btn btn-danger"/>
                        <asp:Button ID="Button3" runat="server" Text="Delete" class="btn btn-danger"/>
                   
  
            </div>
            <div class="col-md-8">

            </div>
        </div>

    </div>
</asp:Content>

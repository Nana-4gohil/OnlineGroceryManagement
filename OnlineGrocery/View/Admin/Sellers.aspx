<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Sellers.aspx.cs" Inherits="OnlineGrocery.View.Admin.Sellers" %>

<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
     <div class="container-fluid">
     <div class="row">
         <div class="col-md-4">
                <asp:Label ID="ErrMsg" runat="server"></asp:Label>
         </div>
         <div class="col-md-8">
             <br />
             &nbsp;<h3 class="text-danger">Manage Sellers</h3>
         </div>
     </div>
     <div class="row">
         <div class="col-md-4">
          
             <h2>Sellers Details</h2>
             
                   <div class="mb-3">
                     <label for="exampleInputEmail1" class="form-label">Name</label>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="SellerNameTextBox" ErrorMessage="Name is Required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                      <asp:TextBox ID="SellerNameTextBox" runat="server"  class="form-control"></asp:TextBox>
                   </div>
                   <div class="mb-3">
                     <label for="exampleInputPassword1" class="form-label">Email<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="SellerEmailTextBox" ErrorMessage="Enter a Valid Email" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                       </label><asp:TextBox ID="SellerEmailTextBox" runat="server" class="form-control" TextMode="Email"></asp:TextBox>
                   </div>
                   <div class="mb-3" >
                     <label for="exampleInputPassword1" class="form-label">&nbsp;Phone 
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="PhoneTextBox" Display="Dynamic" ErrorMessage="Phone is Required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                       </label>
                      <asp:TextBox ID="PhoneTextBox" runat="server" class="form-control" TextMode="Number"  ></asp:TextBox>

                   </div>
               <div class="mb-3 ">
                 <label for="exampleInputPassword1" class="form-label">&nbsp;Password</label><asp:TextBox ID="PassworTextBox" runat="server" class="form-control" TextMode="Password" ></asp:TextBox>
               </div>
               <div class="mb-3">
                 <label for="exampleInputPassword1" class="form-label">Address</label><asp:TextBox ID="AddressTextBox" runat="server" class="form-control" ></asp:TextBox>
               </div>
                     
                
                     <asp:Button ID="Savebtn" runat="server" Text="Save" class="btn btn-danger" OnClick="Savebtn_Click"/>  
                     <asp:Button ID="Editbtn" runat="server" Text="Edit" class="btn btn-danger" OnClick="Editbtn_Click"/>
                     <asp:Button ID="Deletebtn" runat="server" Text="Delete" class="btn btn-danger" CausesValidation="False" OnClick="Deletebtn_Click"/>
                
  
         </div>
         <div class="col-md-8">
             <asp:GridView runat="server" class="table" ID="SellerGV" AutoGenerateSelectButton="True" OnSelectedIndexChanged="SellerGV_SelectedIndexChanged">

             </asp:GridView>

         </div>
     </div>

 </div>
</asp:Content>

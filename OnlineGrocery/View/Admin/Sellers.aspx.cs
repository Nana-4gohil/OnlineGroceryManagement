using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineGrocery.View.Admin
{
    public partial class Sellers : System.Web.UI.Page
    {
        Model.Functions Con;

        protected void Page_Load(object sender, EventArgs e)
        {
           
            Con = new Model.Functions();
            showSellers();
        }
        public override void VerifyRenderingInServerForm(Control control)
        {
            
        }
        private void showSellers()
        {
            try
            {
                string Query = "Select * from SellerTbl";
                SellerGV.DataSource = Con.getDate(Query);
                SellerGV.DataBind();
            }catch(Exception ex)
            {
                ErrMsg.Text = ex.Message;   
            }
           

        }
        protected void Savebtn_Click(object sender, EventArgs e)
        {
            try
            {
                string Name = SellerNameTextBox.Text;
                string Email = SellerEmailTextBox.Text;
                string Password = PassworTextBox.Text;
                string Address = AddressTextBox.Text;
                string Phone = PhoneTextBox.Text;
                string Query = "insert into SellerTbl(selName,SelEmail,SelPassword,SelPhone,SelAddress) values ('{0}','{1}','{2}','{3}','{4}')";
                Query = string.Format(Query, Name, Email, Password, Phone, Address);
                Con.SetData(Query);
                showSellers();
                ClearFields();
                ErrMsg.Text = "Seller Saved Succefuly";
              
            }
            catch (Exception ex)
            {
                ErrMsg.Text = ex.Message;   
            }
           

        }
        private void ClearFields()
        {
            SellerNameTextBox.Text = "";
            SellerEmailTextBox.Text = "";
            PassworTextBox.Text = "";
            AddressTextBox.Text = "";
            PhoneTextBox.Text = "";

        }

        protected void Editbtn_Click(object sender, EventArgs e)
        {
            try
            {
                string Name = SellerNameTextBox.Text;
                string Email = SellerEmailTextBox.Text;
                string Password = PassworTextBox.Text;
                string Address = AddressTextBox.Text;
                string Phone = PhoneTextBox.Text;
                string Id = ViewState["Id"].ToString();
                string Query = "update SellerTbl set selName = '{0}',SelEmail = '{1}',SelPassword = '{2}',SelPhone = '{3}' ,SelAddress  = '{4}' where SelId = '{5}'";
                Query = string.Format(Query, Name, Email, Password, Phone, Address,Id);
                Con.SetData(Query);
                showSellers();
                ClearFields();
                ErrMsg.Text = "Seller Updated Succefully";

            }
            catch (Exception ex)
            {
                ErrMsg.Text = ex.Message;
            }

        }
        
        protected void SellerGV_SelectedIndexChanged(object sender, EventArgs e)
        {
            SellerNameTextBox.Text = SellerGV.SelectedRow.Cells[2].Text;
            SellerEmailTextBox.Text = SellerGV.SelectedRow.Cells[3].Text;
            PassworTextBox.Text = SellerGV.SelectedRow.Cells[4].Text;
            AddressTextBox.Text = SellerGV.SelectedRow.Cells[5].Text;
            PhoneTextBox.Text = SellerGV.SelectedRow.Cells[6].Text;
            ViewState["Id"] = SellerGV.SelectedRow.Cells[1].Text;

        }

        protected void Deletebtn_Click(object sender, EventArgs e)
        {
            try
            {

                string Id = ViewState["Id"].ToString();
                string Query = "Delete from SellerTbl where SelId = '{0}'";
                Query = string.Format(Query, Id);
                Con.SetData(Query);
                showSellers();
                ClearFields();
                ErrMsg.Text = "Seller Deleted Succefully";

            }
            catch (Exception ex)
            {
                ErrMsg.Text = ex.Message;
            }

        }
    }
}
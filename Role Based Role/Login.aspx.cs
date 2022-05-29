using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


namespace Role_Based_Role
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection sqlCon = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\shrey\source\repos\Role Based Role\Role Based Role\App_Data\Database1.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            //sqlCon.Open();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select * from UserList where Username=@usr and Password=@pwd", sqlCon);
            cmd.Parameters.Clear();
            cmd.Parameters.AddWithValue("@usr", txtUserName.Text);
            cmd.Parameters.AddWithValue("@pwd", txtPassword.Text);
            bool isAdmin = false;

            try
            {
                sqlCon.Open();

                SqlDataReader sdr = cmd.ExecuteReader();

                if (!sdr.HasRows)
                {
                    Label4.Text = "Invalid";
                    return;
                }

                while (sdr.Read())
                {
                    isAdmin = int.Parse(sdr["Roles"].ToString()) == 0;
                }
            }
            finally
            {
                sqlCon.Close();
            }

            if (isAdmin)
            {
                // Admin page
                Response.Redirect("RoleAccess.aspx");
            }
            else 
            {
                // Non admin page
                Label4.Text = "LOGIN SUCCESSFULL!!!";
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            var random = new Random();
            sqlCon.Open();
            SqlCommand sqlCmd = new SqlCommand("insert into UserList values('" + $"{txtRegUserName.Text}-{random.Next(1, 1000)}" + "','" + txtRegUserName.Text + "','" + txtRegPassword.Text + "','" + roleAccess.Text + "')", sqlCon);
            sqlCmd.ExecuteNonQuery();
            sqlCon.Close();
            regInvalid.Text = "Data Successfully Inserted";
            txtId.Text = string.Empty;
            txtUserName.Text = string.Empty;
            txtPassword.Text = string.Empty;
            usersGridView.DataBind();


        }

        protected void usersGridView_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
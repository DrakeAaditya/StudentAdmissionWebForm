using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace Student
{
    public partial class RegistrationPageMain : System.Web.UI.Page
    {
        String myconnection = "SERVER=127.0.0.1;DATABASE=dotnet;UID=root;PASSWORD=aaditya", inquery, outquery;
        String name, designation, gender, hobbies, username, password;
        protected void Page_Load(object sender, EventArgs e)
        {
            
    }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox4.Text != TextBox5.Text)
            {
                Response.Write("<script>alert('Password Didn't Match');</script>");
           }
            else {
                name = TextBox2.Text;
                designation = DropDownList1.Text;

                if (RadioButton1.Checked == true)
                    gender = RadioButton1.Text;
                else if (RadioButton2.Checked == true)
                    gender = RadioButton2.Text;
                else
                    gender = RadioButton1.Text;


                if (CheckBox1.Checked == true)
                    hobbies = CheckBox1.Text;
                if (CheckBox2.Checked == true)
                    hobbies = hobbies + ", " + CheckBox2.Text;
                if (CheckBox3.Checked == true)
                    hobbies = hobbies + ", " + CheckBox3.Text;
                if (CheckBox4.Checked == true)
                    hobbies = hobbies + ", " + CheckBox4.Text;

                username = TextBox3.Text;
                password = TextBox4.Text;

                try
                {
                    inquery = "insert into registrationpageweb values ('" + name + "','" + designation + "','" + gender + "','" + hobbies + "','" + username + "','" + password + "')";
                    MySqlConnection connection = new MySqlConnection(myconnection);
                    MySqlCommand command = new MySqlCommand(inquery, connection);
                    MySqlDataReader myReader;
                    connection.Open();
                    myReader = command.ExecuteReader();
                    Response.Write("<script>alert('Data Saved')</script>");
                    Response.Write("<script>alert('Sign Up Successful')</script>");
                    Response.Redirect("Default.aspx");
                    connection.Close();
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert( " + ex.Message + " )</script>");
                }
                
            }

                

        }
    }
}
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace Student
{
    public partial class RegistrationPageMod : System.Web.UI.Page
    {
        String myconnection = "SERVER=127.0.0.1;DATABASE=dotnet;UID=root;PASSWORD=aaditya", inquery, outquery;
        protected void Page_Load(object sender, EventArgs e)
        {
            String name_fetched = TextBox1.Text;
            String fetched_query = "SELECT * FROM Studentdetail WHERE Rollno = '" + name_fetched + "'";
            MySqlConnection connection = new MySqlConnection(myconnection);
            MySqlCommand command = new MySqlCommand(fetched_query, connection);
            MySqlDataAdapter myAdapter = new MySqlDataAdapter(command);
            DataTable table = new DataTable("My Table");
            myAdapter.Fill(table);
            foreach (DataRow row in table.Rows)
            {
                TextBox1.Text = row.ItemArray[0].ToString();
                TextBox2.Text = row.ItemArray[1].ToString();
                DropDownList1.Text = row.ItemArray[2].ToString();

                if (row.ItemArray[3].ToString() == RadioButton1.Text)
                    RadioButton1.Checked = true;
                if (row.ItemArray[3].ToString() == RadioButton2.Text)
                    RadioButton2.Checked = true;

                DropDownList2.Text = row.ItemArray[4].ToString();

                String Date = row.ItemArray[5].ToString();
                string[] vs = Date.Split('/');
                DropDownList3.Text = vs[0];
                DropDownList4.Text = vs[1];
                DropDownList5.Text = vs[2];
                
            }
    }
}
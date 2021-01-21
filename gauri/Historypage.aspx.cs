using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

public partial class Historypage : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        Bind();
    }
    public void Bind()
    {
        MySqlConnection con = new MySqlConnection("server=localhost;user id=Gauri;persistsecurityinfo=True;database=bank;password = Gauri");
        con.Open();
        MySqlCommand cmd = new MySqlCommand("select * from transaction", con);
        MySqlDataAdapter adp = new MySqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        cmd.Dispose();
        con.Close();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Homepage.aspx");
    }
}
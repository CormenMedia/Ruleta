using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class algebra : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSet ds = new DataSet();

        q1.Style["DISPLAY"] = "none";
        q2.Style["DISPLAY"] = "none";
        q3.Style["DISPLAY"] = "none";
        result.Style["DISPLAY"] = "none";
        SqlConnection con = new SqlConnection("Data Source = den1.mssql8.gear.host; User ID = mate; Password = Mb1apc_Z~n8V; Connect Timeout = 30; Encrypt = False; TrustServerCertificate = False; ApplicationIntent = ReadWrite; MultiSubnetFailover = False");
        con.Open();
        string query = @"select TOP 3 * from tbl_preguntas where cd_area = 1  order by NEWID()";
        SqlCommand cmd = new SqlCommand(query, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        Session["DS_SQL"] = ds;

        if (ds.Tables.Count > 0)
        {
            q1.Style["DISPLAY"] = "block";

        }
    }

    protected void cmd_q1_Click(object sender, EventArgs e)
    {
        q1.Style["DISPLAY"] = "none";
        q2.Style["DISPLAY"] = "block";
    }

    protected void cmd_q2_Click(object sender, EventArgs e)
    {
        q2.Style["DISPLAY"] = "none";
        q3.Style["DISPLAY"] = "block";
    }

    protected void cmd_q3_Click(object sender, EventArgs e)
    {
        q3.Style["DISPLAY"] = "none";
        result.Style["DISPLAY"] = "block";
    }

    protected void cmd_terminar_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Default.aspx");
    }
}
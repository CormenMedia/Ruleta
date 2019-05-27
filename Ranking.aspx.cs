using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Ranking : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSet ds = new DataSet();

        SqlConnection con = new SqlConnection
            //("Data Source = den1.mssql#.gear.host;Initial Catalog=DBName;User ID=mate;Password=Mb1apc_Z~n8V")
            //("Data Source=den1.mssql#.gear.host;Initial Catalog = DatabaseConnectivity;Trusted_Connection=true;");
            ("Data Source = den1.mssql8.gear.host; User ID = mate; Password = Mb1apc_Z~n8V; Connect Timeout = 30; Encrypt = False; TrustServerCertificate = False; ApplicationIntent = ReadWrite; MultiSubnetFailover = False");
        con.Open();
        string query = @"select * from tbl_puntuaciones order by nu_puntos desc";
        SqlCommand cmd = new SqlCommand(query, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        Session["DS_SQL"] = ds;

        grdRanking.CurrentPageIndex = 0;
        grdRanking.DataSource = CreateDataSource();
        grdRanking.DataBind();

        da.Dispose();
        ds.Dispose();
        con.Close();
    }

    private DataTable CreateDataSource()
    {
        DataSet ds;

        ds = (DataSet)Session["DS_SQL"];

        return ds.Tables[0];
    }

}
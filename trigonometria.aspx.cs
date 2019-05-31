using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class trigonometria : System.Web.UI.Page
{
    DataRow registro;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        ds = new DataSet();

        if (!IsPostBack)
        {
            q1.Style["DISPLAY"] = "none";
            q2.Style["DISPLAY"] = "none";
            q3.Style["DISPLAY"] = "none";
            result.Style["DISPLAY"] = "none";
            SqlConnection con = new SqlConnection("Data Source = den1.mssql8.gear.host; User ID = mate; Password = Mb1apc_Z~n8V; Connect Timeout = 30; Encrypt = False; TrustServerCertificate = False; ApplicationIntent = ReadWrite; MultiSubnetFailover = False");
            con.Open();
            string query = @"select TOP 3 * from tbl_preguntas where cd_area = 3 order by NEWID()";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            Session["DS_SQL"] = ds;

            if (ds.Tables.Count > 0)
            {
                registro = ds.Tables[0].Rows[0];
                imagen01.ImageUrl = "~" + registro[2].ToString();
                //Session["Ptos01"] = registro[3].ToString();
                Session["Qid"] = registro[0].ToString();
                q1.Style["DISPLAY"] = "block";
            }
        }
    }

    protected void cmd_q1_Click(object sender, EventArgs e)
    {
        ds = (DataSet)Session["DS_SQL"];
        if (ds.Tables.Count > 0)
        {
            registro = ds.Tables[0].Rows[0];
            if (radq1.SelectedValue == registro[4].ToString())
            {
                Session["Ptos01"] = registro[3].ToString();
            }
            else
            {
                Session["Ptos01"] = 0;
            }
            registro = ds.Tables[0].Rows[1];
            imagen02.ImageUrl = "~" + registro[2].ToString();
            //Session["Ptos02"] = registro[3].ToString();
        }
        q1.Style["DISPLAY"] = "none";
        q2.Style["DISPLAY"] = "block";
    }

    protected void cmd_q2_Click(object sender, EventArgs e)
    {
        ds = (DataSet)Session["DS_SQL"];
        if (ds.Tables.Count > 0)
        {
            registro = ds.Tables[0].Rows[1];
            if (radq2.SelectedValue == registro[4].ToString())
            {
                Session["Ptos02"] = registro[3].ToString();
            }
            else
            {
                Session["Ptos02"] = 0;
            }
            registro = ds.Tables[0].Rows[2];
            imagen03.ImageUrl = "~" + registro[2].ToString();
            //Session["Ptos03"] = registro[3].ToString();
        }
        q2.Style["DISPLAY"] = "none";
        q3.Style["DISPLAY"] = "block";
    }

    protected void cmd_q3_Click(object sender, EventArgs e)
    {
        ds = (DataSet)Session["DS_SQL"];
        if (ds.Tables.Count > 0)
        {
            registro = ds.Tables[0].Rows[2];
            if (radq3.SelectedValue == registro[4].ToString())
            {
                Session["Ptos03"] = registro[3].ToString();
            }
            else
            {
                Session["Ptos03"] = 0;
            }
        }
        usuario.Text = Session["Usuario"].ToString();
        //puntuacion.Text = ((int)Session["Ptos01"] + (int)Session["Ptos02"] + (int)Session["Ptos03"]).ToString();
        puntuacion.Text = (Convert.ToInt32(Session["Ptos01"].ToString()) + Convert.ToInt32(Session["Ptos02"].ToString()) +
                                Convert.ToInt32(Session["Ptos03"].ToString())).ToString();
        q3.Style["DISPLAY"] = "none";
        result.Style["DISPLAY"] = "block";
    }

    protected void cmd_terminar_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source = den1.mssql8.gear.host; User ID = mate; Password = Mb1apc_Z~n8V; Connect Timeout = 30; Encrypt = False; TrustServerCertificate = False; ApplicationIntent = ReadWrite; MultiSubnetFailover = False");
        con.Open();
        SqlCommand query = con.CreateCommand();
        query.CommandType = CommandType.Text;
        query.CommandText = string.Format("insert into tbl_puntuaciones values('" + usuario.Text + "', null, " + puntuacion.Text + ")");
        int res = query.ExecuteNonQuery();
        //string query = @"insert into tbl_puntuaciones values ('" + usuario.Text + "', null, " + puntuacion.Text;
        //SqlCommand cmd = new SqlCommand(query, con);
        Response.Redirect("~/Default.aspx");
    }
}
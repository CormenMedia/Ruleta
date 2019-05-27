using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class welcome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_continuar_Click(object sender, EventArgs e)
    {
        Session["Usuario"] = txt_usuario.Text;
        Response.Redirect("~/Desafio.aspx");
    }
}
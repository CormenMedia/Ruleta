using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Desafio : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lbl_usuario.Text = Session["Usuario"].ToString();
    }

    protected void LeeMensaje()
    {
        mensaje_res.Text = "Funciona";
    }

    //protected void btn_ruleta_Click(object sender, EventArgs e)
    //{
    //    string a;

    //    //a = resultado.ToString();

    //    //Response.Redirect(resultado.ToString());
    //}
}
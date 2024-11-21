using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuizzVitaProyecto.Principal
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var imageLogout = (Image)Master.FindControl("Image4");
            var imageLogin = (Image)Master.FindControl("Image2");

            if (!IsPostBack && Session["UserName"] != null)
            {
                
                if (imageLogin != null)
                {
                    imageLogin.Visible = false;
                    imageLogout.Visible = true;
                }
            }
            else
            {
                imageLogin.Visible = true;
                imageLogout.Visible = false;
            }
        }

        protected void lnkLogout_Click(object sender, EventArgs e)
        {
            // Código para cerrar sesión
            Session.Abandon(); // Termina la sesión actual

        }

    }
}
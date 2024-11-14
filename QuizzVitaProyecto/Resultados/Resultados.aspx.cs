using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuizzVitaProyecto.Respuestas
{
    public partial class Resultados : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Busca y oculta la imagen de Home
                var imageHome = (Image)Master.FindControl("Image1");
                if (imageHome != null)
                {
                    imageHome.Visible = false;
                }

                // Inyecta JavaScript para ocultar el elemento con el ID "menu"
                string script = "<script>document.getElementById('menu').style.display = 'none';</script>";
                ClientScript.RegisterStartupScript(this.GetType(), "HideMenu", script);
            }
        }
    }
}
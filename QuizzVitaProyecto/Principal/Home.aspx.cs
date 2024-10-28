﻿using System;
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
            if (!IsPostBack && Session["UserName"] != null)
            {
                lblUserName.Text = "Bienvenido, " + Session["UserName"].ToString();
            }
        }

    }
}
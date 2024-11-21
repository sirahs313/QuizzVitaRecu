using Microsoft.AspNet.Identity;
using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.Http;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuizzVitaProyecto
{
    public partial class SiteMaster : MasterPage
    {
        // Código existente...

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["UserName"] != null)
            {
                
                lblUserName.Text = "Bienvenido, " + Session["UserName"].ToString();
                lblEmail.Text = Session["Email"].ToString();
                lblUserName.Visible = true; // Hacer visible el label con el nombre de usuario
                lblEmail.Visible = true;
                Image4.Visible = true; //Hace visible el boton para cerrar sesion
            }
            else
            {
                Image4.Visible = false; //Oculta el boton para cerrar sesion
            }


            //if (Session["UserName"] != null)
            //    {
            //        lblUserName.Text = "Bienvenido, " + Session["UserName"].ToString();
            //        lblUserName.Visible = true; // Hacer visible el label con el nombre de usuario
            //    LinkButton1.Visible = true;    // Hacer visible el LinkButton para cerrar sesión
            //    }
            //    else
            //    {
            //        lblUserName.Visible = false; // Ocultar el label si no hay sesión
            //    LinkButton1.Visible = false;    // Ocultar el LinkButton si no hay sesión
            //    }

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string email = Request.Form["email"];
            string password = Request.Form["password"];

            // Encriptar la contraseña ingresada para comparar con el hash almacenado
            string hashedPassword = HashPassword(password);

            // Autenticación y obtención del nombre del usuario
            string userName = AuthenticateUser(email, hashedPassword);

            if (userName != null)
            {
                // Guardar el nombre y user_id en la sesión para uso posterior
                Session["UserName"] = userName;
                Session["Email"] = email;

                // Redireccionar o mostrar el nombre del usuario
                FormsAuthentication.SetAuthCookie(email, false);
                Response.Redirect("/Principal/Home.aspx");
            }
            else
            {
                // Mostrar mensaje de error para credenciales incorrectas
                Response.Write("<script>alert('Correo electrónico o contraseña incorrectos');</script>");
            }
        }

        private string AuthenticateUser(string email, string hashedPassword)
        {
            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString))
            {
                connection.Open();

                // Verificar si el correo y el hash de la contraseña coinciden
                string sql = "SELECT Nombre, user_id FROM [dbo].[users] WHERE [email] = @Email AND [Password] = @Password";
                using (SqlCommand command = new SqlCommand(sql, connection))
                {
                    command.Parameters.AddWithValue("@Email", email);
                    command.Parameters.AddWithValue("@Password", hashedPassword); // Usar el hash de la contraseña ingresada

                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            // Guardar `user_id` en la sesión para usarlo en otras partes de la aplicación
                            Session["UserID"] = reader["user_id"];
                            return reader["Nombre"].ToString(); // Devuelve el nombre del usuario si la autenticación es correcta
                        }
                    }
                }
            }
            return null;
        }



        private string HashPassword(string password)
        {
            using (var sha256 = SHA256.Create())
            {
                byte[] bytes = sha256.ComputeHash(Encoding.UTF8.GetBytes(password));
                var builder = new StringBuilder();
                foreach (byte b in bytes)
                {
                    builder.Append(b.ToString("x2"));
                }
                return builder.ToString();
            }
        }

        protected void lnkLogout_Click(object sender, EventArgs e)
        {
            // Código para cerrar sesión
            Session.Abandon(); // Termina la sesión actual
            Response.Redirect("/Principal/Home.aspx"); // Redirige a la página de inicio de sesión
        }
    }
}

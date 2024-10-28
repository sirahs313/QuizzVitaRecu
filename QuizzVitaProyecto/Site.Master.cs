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
           
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string email = Request.Form["email"];
            string password = Request.Form["password"];

            // Autenticación y obtención del nombre del usuario
            string userName = AuthenticateUser(email, password);

            if (userName != null)
            {
                // Guardar el nombre en la sesión para uso posterior
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


        private string AuthenticateUser(string email, string password)
        {
           using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString))
    {
        connection.Open();

        // Verificar si el correo y la contraseña coinciden y obtener el nombre del usuario
        string sql = "SELECT Nombre FROM [dbo].[users] WHERE [email] = @Email AND [Password] = @Password";
        using (SqlCommand command = new SqlCommand(sql, connection))
        {
            command.Parameters.AddWithValue("@Email", email);
            command.Parameters.AddWithValue("@Password", password); // Usar la contraseña sin hashear

            object result = command.ExecuteScalar();

            return result?.ToString();
                }
            }
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
    }
}

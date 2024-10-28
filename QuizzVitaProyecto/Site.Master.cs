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
            if (IsPostBack && Request.Form["email"] != null)
            {
                btnLogin_Click(sender, e);
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string email = Request.Form["email"];
            string password = Request.Form["password"];

            // Autenticación y obtención del rol del usuario
            string role = AuthenticateUser(email, password);

            if (role == "not_found")
            {
                // Usuario no encontrado en la base de datos, abrir el modal de registro
                ScriptManager.RegisterStartupScript(this, this.GetType(), "openRegisterModal", "document.getElementById('registerModal').style.display = 'block';", true);
            }
            else if (role != null)
            {
                // Guardar el rol en la sesión para uso posterior
                Session["Role"] = role;
                Session["Email"] = email;

                // Redireccionar según el rol del usuario
                if (role == "admin")
                {
                    FormsAuthentication.SetAuthCookie(email, false);
                    //Vista del admin
                    Response.Redirect("~/");
                }
                else if (role == "estudiante")
                {
                    FormsAuthentication.SetAuthCookie(email, false);
                    Response.Redirect("~/Principal/Home.aspx");
                }
            }
            else
            {
                // Mostrar mensaje de error para credenciales incorrectas
                Response.Write("<script>alert('Correo electrónico o contraseña incorrectos');</script>");
            }
        }

        private string AuthenticateUser(string email, string password)
        {
            // Hash de la contraseña ingresada
            string hashedPassword = HashPassword(password);

            // Conectar a la base de datos
            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString))
            {
                connection.Open();

                // Primero, verificar si el correo electrónico existe en la base de datos
                string checkUserSql = "SELECT COUNT(1) FROM [dbo].[users] WHERE [email] = @Email";
                using (SqlCommand checkUserCommand = new SqlCommand(checkUserSql, connection))
                {
                    checkUserCommand.Parameters.AddWithValue("@Email", email);
                    int userExists = (int)checkUserCommand.ExecuteScalar();

                    if (userExists == 0)
                    {
                        // Usuario no encontrado, retornar "not_found" para redirigir al registro
                        return "not_found";
                    }
                }

                // Luego, verificar si el correo y la contraseña coinciden y obtener el rol
                string sql = "SELECT role FROM [dbo].[users] WHERE [email] = @Email AND [Password] = @Password";
                using (SqlCommand command = new SqlCommand(sql, connection))
                {
                    command.Parameters.AddWithValue("@Email", email);
                    command.Parameters.AddWithValue("@Password", hashedPassword);

                    // Ejecutar la consulta y obtener el rol si las credenciales son correctas
                    object result = command.ExecuteScalar();

                    // Retornar el rol si se encuentra una coincidencia, o null si las credenciales son incorrectas
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

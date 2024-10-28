using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;

namespace QuizzVitaProyecto.Principal
{
    public class AuthService
    {
        //private string connectionString = Data Source=ERICKSUA\SQL; Initial Catalog=QuizzVita; User ID=sa; Password= 313420; encrypt=false;";
        private string connectionString = "Data Source=DESKTOP-S3EH2BR\\SQLEXPRESS; Initial Catalog=QuizzVita; User ID=sa; Password=1966; Encrypt=false;";

        public string AuthenticateUser(string email, string password)
        {
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();

                // Ajustamos el nombre de los campos para que coincidan con los de la base de datos
                SqlCommand cmd = new SqlCommand("SELECT Password, role FROM users WHERE email = @Email", conn);
                cmd.Parameters.AddWithValue("@Email", email);

                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    if (reader.Read())
                    {
                        string storedHash = reader["Password"].ToString();
                        string role = reader["role"].ToString();

                        // Verificación de la contraseña
                        if (VerifyPassword(password, storedHash))
                        {
                            return role;
                        }
                    }
                }
            }

            return null; // Retorna null si la autenticación falla
        }

        // Función para verificar la contraseña con el hash
        private bool VerifyPassword(string password, string storedHash)
        {
            string hash = ComputeSha256Hash(password);
            return hash == storedHash;
        }

        // Función para calcular el hash SHA-256 de una cadena
        private string ComputeSha256Hash(string rawData)
        {
            using (SHA256 sha256Hash = SHA256.Create())
            {
                byte[] bytes = sha256Hash.ComputeHash(Encoding.UTF8.GetBytes(rawData));
                StringBuilder builder = new StringBuilder();
                foreach (byte b in bytes)
                {
                    builder.Append(b.ToString("x2"));
                }
                return builder.ToString();
            }
        }
    }
 }
using System;
using System.Web.UI;
using System.Collections.Generic;
using System.Linq;
using System.Data.SqlClient;
using System.Configuration;

namespace QuizzVitaProyecto.QuizzDepresion
{
    public partial class WebForm1 : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] == null)
            {

                Response.Redirect("/Principal/Home.aspx?showModal=true");

            }
        }

        protected void SubmitQuiz(object sender, EventArgs e)
        {
            // FUNCIONALIDAD PARA OBTENER RESULTADOS DEL QUIZZ ---
            int totalScore = 0;

            // Guardar las respuestas en una lista
            List<int> respuestas = new List<int>();
            respuestas.Add(Convert.ToInt32(Request.Form["q1"]));
            respuestas.Add(Convert.ToInt32(Request.Form["q2"]));
            respuestas.Add(Convert.ToInt32(Request.Form["q3"]));
            respuestas.Add(Convert.ToInt32(Request.Form["q4"]));
            respuestas.Add(Convert.ToInt32(Request.Form["q5"]));
            respuestas.Add(Convert.ToInt32(Request.Form["q6"]));
            respuestas.Add(Convert.ToInt32(Request.Form["q7"]));
            respuestas.Add(Convert.ToInt32(Request.Form["q8"]));
            respuestas.Add(Convert.ToInt32(Request.Form["q9"]));
            respuestas.Add(Convert.ToInt32(Request.Form["q10"]));

            // Calcular el puntaje total
            totalScore = respuestas.Sum();

            // Almacenar las respuestas en la sesión
            Session["RespuestasDepresion"] = respuestas;

            // Determinar el diagnóstico
            string diagnosis = "";
            if (totalScore <= 10)
            {
                diagnosis = "Depresion Baja";
            }
            else if (totalScore <= 20)
            {
                diagnosis = "Depresion Moderada";
            }
            else
            {
                diagnosis = "Depresion Severa";
            }
            // Obtener el ID del usuario desde la sesión
            int userId = (int)Session["UserID"];  

            // Insertar el resultado en la base de datos
            string connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "INSERT INTO [dbo].[results] (user_id, problem_id, fecha, puntaje) VALUES (@UserID, @ProblemID, @Fecha, @Puntaje)";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@UserID", userId);  
                    command.Parameters.AddWithValue("@ProblemID", 1); // ID del quiz "Depresión" (1)
                    command.Parameters.AddWithValue("@Fecha", DateTime.Now);
                    command.Parameters.AddWithValue("@Puntaje", totalScore);

                    connection.Open();
                    command.ExecuteNonQuery();
                }
            }

            // Redirigir a la página de resultados con el diagnóstico
            Response.Redirect($"Res.aspx?diagnosis={diagnosis}&score={totalScore}");
        }
    }
}

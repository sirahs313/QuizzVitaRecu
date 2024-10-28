using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuizzVitaProyecto.QuizzAnsiedad
{
    public partial class QuizzAnsiedad : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!User.Identity.IsAuthenticated)
            {
                // Redirige a la página de inicio de sesión si el usuario no está autenticado

                Response.Redirect("/Principal/Home.aspx");
            }
        }
        protected void SubmitQuiz(object sender, EventArgs e)
        {
            // FUNCIONALIDAD PARA OBTENER RESULTADOS DEL QUIZZ ---
            int totalScore = 0;

            // Guardar las respuestas en un arreglo
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
            Session["RespuestasAnsiedad"] = respuestas;

            // Determinar el diagnóstico
            string diagnosis = "";
            if (totalScore <= 10) // Ajusta estos valores según la cantidad de preguntas
            {
                diagnosis = "Ansiedad Baja";
            }
            else if (totalScore <= 20)
            {
                diagnosis = "Ansiedad Moderada";
            }
            else
            {
                diagnosis = "Ansiedad Severa";
            }

            // Redirigir a la página de resultados con el diagnóstico
            Response.Redirect($"Res.aspx?diagnosis={diagnosis}&score={totalScore}");
        }

        
    }
}
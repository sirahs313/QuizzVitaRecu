using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuizzVitaProyecto.QuizzEstres
{
    public partial class respuestasEstres : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Recuperar las respuestas de la sesión
                if (Session["RespuestasEstres"] != null)
                {
                    List<int> respuestas = (List<int>)Session["RespuestasEstres"];
                    MostrarRespuestas(respuestas);
                }
                else
                {
                    // Manejar el caso en que no haya respuestas almacenadas
                    //lblMensaje.Text = "No se han encontrado respuestas anteriores.";
                }
            }
        }

        private void MostrarRespuestas(List<int> respuestas)
        {
            // Asegúrate de que la cantidad de respuestas coincida con el número de preguntas
            if (respuestas.Count >= 10)
            {
                // Pregunta 1
                SeleccionarRespuesta(rblPregunta1, respuestas[0]);
                // Pregunta 2
                SeleccionarRespuesta(rblPregunta2, respuestas[1]);
                // Pregunta 3
                SeleccionarRespuesta(rblPregunta3, respuestas[2]);
                // Pregunta 4
                SeleccionarRespuesta(rblPregunta4, respuestas[3]);
                // Pregunta 5
                SeleccionarRespuesta(rblPregunta5, respuestas[4]);
                // Pregunta 6
                SeleccionarRespuesta(rblPregunta6, respuestas[5]);
                // Pregunta 7
                SeleccionarRespuesta(rblPregunta7, respuestas[6]);
                // Pregunta 8
                SeleccionarRespuesta(rblPregunta8, respuestas[7]);
                // Pregunta 9
                SeleccionarRespuesta(rblPregunta9, respuestas[8]);
                // Pregunta 10
                SeleccionarRespuesta(rblPregunta10, respuestas[9]);
            }
        }

        private void SeleccionarRespuesta(RadioButtonList rbl, int respuesta)
        {
            // Seleccionar el ítem que corresponde a la respuesta
            ListItem item = rbl.Items.FindByValue(respuesta.ToString());
            if (item != null)
            {
                item.Selected = true;
            }
        }
    }
}
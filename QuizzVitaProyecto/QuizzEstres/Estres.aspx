﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Estres.aspx.cs" Inherits="QuizzVitaProyecto.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Quizz de Estrés</title>
    <link rel="stylesheet" type="text/css" href="../css/Style.css" />

</head>
<body>
    <form id="form1" runat="server">
        <!-- Barra Superior -->
        <div class="top-bar">
            <a href="/Principal/home.aspx">
                <img src="/Principal/img/inicio.png" alt="Inicio" />
            </a>
            <img src="/Principal/img/menu.png" alt="Menú" id="menuButton" />
        </div>

        <!-- Menú lateral -->
        <div id="sideMenu" class="side-menu">
            <a href="javascript:void(0)" class="closebtn" id="closeMenu">&times;</a>
            <div style="margin-top: 10%; padding-top: 8%; padding-bottom: 8%; text-align: center; border-bottom: 1px solid #A4ECD2; border-top: 1px solid #A4ECD2; margin-left: 3%; margin-right: 3%;">
                <h5>Quizzes</h5>
            </div>
            <br />
            <a href="/QuizzDepresion/Depresion.aspx">Depresión</a>
            <a href="/QuizzAnsiedad/QuizzAnsiedad.aspx">Ansiedad</a>
            <a href="/QuizzEstres/Estres.aspx">Estrés</a>
            <div style="margin-top: 10%; padding-top: 8%; padding-bottom: 8%; text-align: center; border-bottom: 1px solid #A4ECD2; border-top: 1px solid #A4ECD2; margin-left: 3%; margin-right: 3%;">
                <a href="/Informacionapoyo.aspx">Informacion de apoyo</a>
            </div>
        </div>

        <!-- Contenido Principal -->
        <div class="container">
            <img src="/Principal/img/logo.png" alt="Logo" class="logo" />
            <h1 style="margin-top: 3%; padding-bottom: 1%; border-bottom: 2px solid #A4ECD2;">Quizz de Estrés</h1>
            <p>Lea cada oración y después decida qué respuesta representa mejor su situación. No hay respuestas correctas o incorrectas.</p>
            <p>Este Quizz está diseñado como un prediagnóstico para corroborar sus resultados consulte con un especialista.</p>
            <br />

            <div class="containerquestion">
                <div class="question">
                    <label>1. En las últimas dos semanas, ¿con qué frecuencia te has sentido abrumado(a) por tus responsabilidades y tareas diarias?</label>
                    <div>
                        <input type="radio" id="q1_op1" name="q1" value="0" />
                        <label for="q1_op1">Nunca</label>
                    </div>
                    <div>
                        <input type="radio" id="q1_op2" name="q1" value="1" />
                        <label for="q1_op2">Varios días</label>
                    </div>
                    <div>
                        <input type="radio" id="q1_op3" name="q1" value="2" />
                        <label for="q1_op3">Más de la mitad de los días</label>
                    </div>
                    <div>
                        <input type="radio" id="q1_op4" name="q1" value="3" />
                        <label for="q1_op4">Casi todos los días</label>
                    </div>
                </div>

                <div class="question">
                    <label>2. ¿Con qué frecuencia has sentido que no tienes control sobre las cosas importantes en tu vida?</label>
                    <div>
                        <input type="radio" id="q2_op1" name="q2" value="0" />
                        <label for="q2_op1">Nunca</label>
                    </div>
                    <div>
                        <input type="radio" id="q2_op2" name="q2" value="1" />
                        <label for="q2_op2">Rara vez</label>
                    </div>
                    <div>
                        <input type="radio" id="q2_op3" name="q2" value="2" />
                        <label for="q2_op3">Algunas veces </label>
                    </div>
                    <div>
                        <input type="radio" id="q2_op4" name="q2" value="3" />
                        <label for="q2_op4">Muy frecuentemente</label>
                    </div>
                </div>

                <div class="question">
                    <label>3. ¿Con qué frecuencia has experimentado problemas para dormir debido a preocupaciones?</label>
                    <div>
                        <input type="radio" id="q3_op1" name="q3" value="0" />
                        <label for="q3_op1">Nunca</label>
                    </div>
                    <div>
                        <input type="radio" id="q3_op2" name="q3" value="1" />
                        <label for="q3_op2">Rara vez</label>
                    </div>
                    <div>
                        <input type="radio" id="q3_op3" name="q3" value="2" />
                        <label for="q3_op3">Frecuentemente</label>
                    </div>
                    <div>
                        <input type="radio" id="q3_op4" name="q3" value="3" />
                        <label for="q3_op4">Muy frecuentemente</label>
                    </div>
                </div>

                <div class="question">
                    <label>4. ¿Con qué frecuencia has sentido dificultad para relajarte?</label>
                    <div>
                        <input type="radio" id="q4_op1" name="q4" value="0" />
                        <label for="q4_op1">Nunca</label>
                    </div>
                    <div>
                        <input type="radio" id="q4_op2" name="q4" value="1" />
                        <label for="q4_op2">Rara vez</label>
                    </div>
                    <div>
                        <input type="radio" id="q4_op3" name="q4" value="2" />
                        <label for="q4_op3">Algunas veces</label>
                    </div>
                    <div>
                        <input type="radio" id="q4_op4" name="q4" value="3" />
                        <label for="q4_op4">Muy frecuentemente</label>
                    </div>
                </div>


                <div class="question">
                    <label>5. ¿Con qué frecuencia has tenido problemas para concentrarte debido al estrés?</label>
                    <div>
                        <input type="radio" id="q5_op1" name="q5" value="0" />
                        <label for="q5_op1">Nunca</label>
                    </div>
                    <div>
                        <input type="radio" id="q5_op2" name="q5" value="1" />
                        <label for="q5_op2">Rara vez</label>
                    </div>
                    <div>
                        <input type="radio" id="q5_op3" name="q5" value="2" />
                        <label for="q5_op3">Algunas veces</label>
                    </div>
                    <div>
                        <input type="radio" id="q5_op4" name="q5" value="3" />
                        <label for="q5_op4">Muy frecuentemente</label>
                    </div>
                </div>

                <div class="question">
                    <label>6. ¿Cuán seguido te has sentido nervioso(a) o ansioso(a) sin razón aparente?</label>
                    <div>
                        <input type="radio" id="q6_op1" name="q6" value="0" />
                        <label for="q6_op1">Nunca</label>
                    </div>
                    <div>
                        <input type="radio" id="q6_op2" name="q6" value="1" />
                        <label for="q6_op2">Rara vez</label>
                    </div>
                    <div>
                        <input type="radio" id="q6_op3" name="q6" value="2" />
                        <label for="q6_op3">Algunas veces</label>
                    </div>
                    <div>
                        <input type="radio" id="q6_op4" name="q6" value="3" />
                        <label for="q6_op4">Muy frecuentemente</label>
                    </div>
                </div>

                <div class="question">
                    <label>7. ¿Con qué frecuencia te has sentido agotado(a) incluso después de descansar?</label>
                    <div>
                        <input type="radio" id="q7_op1" name="q7" value="0" />
                        <label for="q7_op1">Nunca</label>
                    </div>
                    <div>
                        <input type="radio" id="q7_op2" name="q7" value="1" />
                        <label for="q7_op2">Rara vez</label>
                    </div>
                    <div>
                        <input type="radio" id="q7_op3" name="q7" value="2" />
                        <label for="q7_op3">Algunas veces</label>
                    </div>
                    <div>
                        <input type="radio" id="q7_op4" name="q7" value="3" />
                        <label for="q7_op4">Muy frecuentemente</label>
                    </div>
                </div>

                <div class="question">
                    <label>8. ¿Cuán seguido te has sentido irritado(a) o molesto(a) sin razón aparente?</label>
                    <div>
                        <input type="radio" id="q8_op1" name="q8" value="0" />
                        <label for="q8_op1">Nunca</label>
                    </div>
                    <div>
                        <input type="radio" id="q8_op2" name="q8" value="1" />
                        <label for="q8_op2">Rara vez</label>
                    </div>
                    <div>
                        <input type="radio" id="q8_op3" name="q8" value="2" />
                        <label for="q8_op3">Algunas veces</label>
                    </div>
                    <div>
                        <input type="radio" id="q8_op4" name="q8" value="3" />
                        <label for="q8_op4">Muy frecuentemente</label>
                    </div>
                </div>

                <div class="question">
                    <label>9. ¿Con qué frecuencia has sentido que las cosas te están sobrepasando?</label>
                    <div>
                        <input type="radio" id="q9_op1" name="q9" value="0" />
                        <label for="q9_op1">Nunca</label>
                    </div>
                    <div>
                        <input type="radio" id="q9_op2" name="q9" value="1" />
                        <label for="q9_op2">Rara vez</label>
                    </div>
                    <div>
                        <input type="radio" id="q9_op3" name="q9" value="2" />
                        <label for="q9_op3">Algunas veces</label>
                    </div>
                    <div>
                        <input type="radio" id="q9_op4" name="q9" value="3" />
                        <label for="q9_op4">Muy frecuentemente</label>
                    </div>
                </div>

                <div class="question">
                    <label>10. ¿Con qué frecuencia has experimentado síntomas físicos como dolores de cabeza, dolor de estómago, o tensión muscular debido al estrés?</label>
                    <div>
                        <input type="radio" id="q10_op1" name="q10" value="0" />
                        <label for="q10_op1">Nunca</label>
                    </div>
                    <div>
                        <input type="radio" id="q10_op2" name="q10" value="1" />
                        <label for="q10_op2">Rara vez</label>
                    </div>
                    <div>
                        <input type="radio" id="q10_op3" name="q10" value="2" />
                        <label for="q10_op3">Algunas veces</label>
                    </div>
                    <div>
                        <input type="radio" id="q10_op4" name="q10" value="3" />
                        <label for="q10_op4">Muy frecuentemente</label>
                    </div>
                </div>
                <button type="submit" runat="server" onserverclick="SubmitQuiz">Enviar respuestas</button>
            </div>
        </div>
    </form>
    <script>
        function openMenu() {
            document.getElementById("sideMenu").style.width = "375px";
            document.getElementById("contentContainer").classList.add("blurred");
        }


        function closeMenu() {
            document.getElementById("sideMenu").style.width = "0";
            document.getElementById("contentContainer").classList.remove("blurred");
        }


        document.getElementById("menuButton").onclick = openMenu;
        document.getElementById("closeMenu").onclick = closeMenu;
        document.getElementById("openMenuButton").onclick = openMenu;
    </script>
</body>
</html>

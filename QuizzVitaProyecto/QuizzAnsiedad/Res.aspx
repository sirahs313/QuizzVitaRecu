﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Res.aspx.cs" Inherits="QuizzVitaProyecto.QuizzAnsiedad.Res" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Resultados del Quizz de Ansiedad</title>
    <link rel="stylesheet" type="text/css" href="../css/Style.css" />
    <style>
        @font-face {
            font-family: 'Mulish';
            src: url('Fuentes/Mulish-Regular.ttf') format('truetype');
        }

        .modal {
            display: none; /* Oculto por defecto */
            position: fixed; /* Posición fija en la pantalla */
            z-index: 1000; /* Por encima del contenido */
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5); /* Fondo semi-transparente */
        }

        .modal-content {
            background-color: #A6DFD0; /* Color de fondo similar a la imagen */
            margin: 5% auto;
            padding: 20px;
            border-radius: 15px; /* Bordes redondeados */
            width: 80%;
            max-width: 400px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); /* Sombra para dar profundidad */
            position: relative;
            text-align: left;
            font-family: 'Mulish', sans-serif;
            line-height: 1.6;
        }

            .modal-content h2 {
                font-size: 1.5rem;
                color: #333;
                font-weight: bold;
                margin-bottom: 10px;
            }

            .modal-content h3 {
                font-size: 1.2rem;
                color: #333;
                font-weight: bold;
                margin-top: 20px;
            }

            .modal-content p, .modal-content ul {
                font-size: 1rem;
                color: #333;
            }

            .modal-content ul {
                padding-left: 20px;
            }

            .modal-content li {
                margin-bottom: 10px;
            }

        /* Estilo del botón de cerrar */
        .close {
            position: absolute;
            top: 10px;
            right: 10px;
            color: #333;
            font-size: 24px;
            font-weight: bold;
            cursor: pointer;
        }

            .close:hover {
                color: #000;
            }

        .result-box {
            background-color: #e0f2f1;
            padding: 20px;
            border-radius: 10px;
            border: 2px solid #4b0082;
            margin-bottom: 20px;
        }

            .result-box p {
                font-size: 1.2rem;
                margin-bottom: 10px;
            }

            .result-box h2 {
                font-size: 1.8rem;
                color: #4b0082;
                margin: 10px 0;
            }

        .buttons {
            display: flex;
            justify-content: space-around;
            margin-top: 20px;
            font-family: Mulish;
        }

            .buttons button {
                background-color: #A4ECD2;
                color: black;
                padding: 10px 20px;
                border: none;
                border-radius: 5px;
                cursor: pointer;
            }

                .buttons button:hover {
                    background-color: rgba(239, 237, 237);
                }

        footer {
            background-color: #f0f0f0;
            padding: 10px;
            text-align: center;
            font-size: 0.9rem;
            color: #666;
            margin-top: 20px;
        }

        .progress-bar {
            /*/background-color: #c8e6c9;*/
            height: 20px;
            border-radius: 10px;
            margin-bottom: 20px;
            overflow: hidden;
            width: 100%; /* Asegura que la barra tenga un ancho máximo del 100% del contenedor */
        }

        .progress {
            height: 100%;
            background-color: #98FF98;
            border-radius: 10px;
            text-align: right;
            padding-right: 10px;
            color: black;
            font-weight: bold;
            transition: width 0.5s ease-in-out;
        }

        h2, h3 {
            font-family: Sarlotte;
            font-size: 2rem;
            margin-bottom: 20px;
        }
    </style>
</head>
<div id="infoModal" class="modal">
    <div class="modal-content">
        <span class="close">&times;</span>
        <h2>Acerca de su puntuación</h2>
        <p>
            Cada una de tus respuestas tiene una puntuación de 0 a 3. Haz clic en “Tus respuestas” para ver tu puntuación para cada pregunta. Al sumarlas y sacar un porcentaje, obtendrás tu puntuación total.
        </p>
        <ul>
            <li>Nunca = 0; Pocas veces = 1; A menudo = 2; Casi todos los días = 3</li>
        </ul>
        <h3>Interpretación de su puntuación total</h3>
        <ul>
            <li>3.7%-14.8%: Ansiedad mínima</li>
            <li>18.5%-33.3%: Ansiedad leve</li>
            <li>37%-51.8%: Ansiedad moderada</li>
            <li>55.6%-70.4%: Ansiedad moderadamente severa</li>
            <li>74.1%-100%: Ansiedad severa</li>
        </ul>
    </div>
</div>


<div id="infoespecModal" class="modal">
    <div class="modal-content">
        <span class="close">&times;</span>
        <h2>Consejos para manejar la Ansiedad</h2>
        <h3>Practica la respiración profunda</h3>
        <ul>
            <li>Inhala lentamente por la nariz contando hasta cuatro, retén el aire por cuatro segundos y exhala por la boca contando hasta seis. </li>
        </ul>
        <h3>Establece una rutina diaria</h3>
        <ul>
            <li>Una estructura regular en tu día puede brindar estabilidad y reducir la incertidumbre que a menudo alimenta la ansiedad.</li>
        </ul>
        <h3>Cuestiona pensamientos negativos</h3>
        <ul>
            <li>Cuando sientas ansiedad, escribe los pensamientos que te preocupan y analiza su validez. Pregúntate si son racionales o si estás exagerando las posibilidades negativas.</li>
        </ul>
    </div>
</div>
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

        <div class="container" id="contentContainer">
            <h1>¡Aquí están tus resultados!</h1>
            <div class="result-box">
                <p>Tu diagnóstico actual es:</p>
                <h2 style="color: #000;"><%= Request.QueryString["diagnosis"] %></h2>

                <!-- Barra de progreso -->
                <div class="progress-bar">
                    <div class="progress" style="width: <%= (Convert.ToInt32(Request.QueryString["score"]) * 100 / 30) %>%;">
                        <%= Request.QueryString["score"] %>/30
                    </div>
                </div>

                <!-- Botones para más acciones -->
                <div class="buttons">
                    <button type="button">Acerca de tus resultados</button>
                    <button type="button">Consejos para manejar tu ansiedad</button>
                    <button type="button" onclick="location.href='respuestasAnsiedad.aspx';">Tus respuestas</button>
                    <button type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar">Realizar otro quizz</button>
                </div>
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

    <script>
        // Obtener el modal
        var modal = document.getElementById("infoModal");

        // Obtener el botón que abre el modal
        var btn = document.querySelector(".buttons button"); // Suponiendo que el botón "Acerca de tus resultados" es el primero

        // Obtener el elemento <span> que cierra el modal
        var span = document.getElementsByClassName("close")[0];

        // Cuando el usuario haga clic en el botón, se muestra el modal
        btn.onclick = function () {
            modal.style.display = "block";
        }

        // Cuando el usuario haga clic en <span> (x), se cierra el modal
        span.onclick = function () {
            modal.style.display = "none";
        }

        // Cuando el usuario haga clic fuera del modal, se cierra
        window.onclick = function (event) {
            if (event.target == modal) {
                modal.style.display = "none";
            }
        }
    </script>
    <script>
        var modal2 = document.getElementById("infoespecModal");
        var buttons = document.querySelectorAll(".buttons button");
        var btn = buttons[1];
        var span = document.getElementsByClassName("close")[1];
        btn.onclick = function () {
            modal2.style.display = "block";
        }
        span.onclick = function () {
            modal2.style.display = "none";
        }
        window.onclick = function (event) {
            if (event.target == modal2) {
                modal2.style.display = "none";
            }
        }

    </script>


</body>
</html>

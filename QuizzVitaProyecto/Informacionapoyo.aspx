<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Informacionapoyo.aspx.cs" Inherits="QuizzVitaProyecto.Informacionapoyo" MasterPageFile="~/Site.Master" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        @media (max-width: 768px) {
            .EllipseContainer {
                display: none;
            }
        }

        @font-face {
            font-family: 'CoffeeSpark';
            src: url('Fuentes/Coffee Spark.ttf');
        }

        @font-face {
            font-family: 'Sarlotte';
            src: url('Fuentes/Sarlotte.otf');
        }

        @font-face {
            font-family: 'Mulish';
            src: url('Fuentes/Mulish-Regular.ttf') format('truetype');
        }

        body {
            font-family: Sarlotte, sans-serif;
            background-color: #F5F5F5;
            margin: 0;
            padding: 0;
        }

        .header {
            background-color: #A2D5C6;
            padding: 10px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

            .header img {
                width: 30px;
                height: 30px;
            }

        .menu {
            font-size: 20px;
        }

        .main-content {
            padding: 20px;
        }

            .main-content h1 {
                text-align: center;
                color: #333;
            }

        .resources, .contacts {
            background-color: #E6FCF8;
            border-radius: 8px;
            padding: 20px;
            margin-bottom: 20px;
            margin-left: 60px;
            margin-right: 60px;
        }

            .resources h2, .contacts h2 {
                color: #333;
            }

        .resource-buttons {
            display: flex;
            justify-content: space-between;
            margin-top: 10px;
        }

            .resource-buttons a {
                text-decoration: none;
                color: black;
                background-color: #A2D5C6;
                border: none;
                padding: 10px 20px;
                border-radius: 5px;
                text-align: center;
                cursor: pointer;
                flex: 1;
                margin: 5px;
                font-family: Mulish;
            }

                .resource-buttons a:hover {
                    background-color: #8EBDAE;
                }

        .contacts p {
            margin: 5px 0;
            font-family: Mulish;
        }

        .footer {
            background-color: #A2D5C6;
            color: white;
            text-align: center;
            padding: 10px;
            position: fixed;
            bottom: 0;
            width: 100%;
        }

            .footer a {
                color: white;
                text-decoration: none;
                margin: 0 10px;
            }

                .footer a:hover {
                    text-decoration: underline;
                }

        .side-menu {
            height: 100%;
            width: 0;
            position: fixed;
            z-index: 1;
            top: 0;
            right: 0;
            background-color: #111;
            overflow-x: hidden;
            transition: 0.5s;
            padding-top: 60px;
        }

            .side-menu a {
                padding: 8px 8px 8px 32px;
                text-decoration: none;
                font-size: 25px;
                color: #818181;
                display: block;
                transition: 0.3s;
            }

                .side-menu a:hover {
                    color: #f1f1f1;
                }

            .side-menu .closebtn {
                position: absolute;
                top: 0;
                right: 25px;
                font-size: 36px;
                margin-left: 50px;
            }
    </style>

    <div class="main-content">
        <h1>Información de apoyo</h1>

        <div class="resources">
            <h2>Recursos sobre la salud mental</h2>
            <div class="resource-buttons">
                <a href="https://www.childrensmn.org/educationmaterials/teens/article/11776/cinco-formas-de-superar-la-depresion/" target="_blank">Formas de superar la depresión</a>
                <a href="https://www.mayoclinic.org/es/healthy-lifestyle/stress-management/in-depth/stress-relievers/art-20047257" target="_blank">Métodos para aliviar el estrés</a>
                <a href="https://www.healthline.com/health/es/como-quitar-el-estres" target="_blank">Aliviar el estrés y la ansiedad</a>
            </div>
        </div>

        <div class="contacts">
            <h2>Contactos</h2>
            <p><strong>Departamento de psicología UPP</strong></p>
            <p>Número telefónico: ### ### ####</p>
            <p>Correo: psicologia@upp.edu.mx</p>
        </div>
    </div>

    <script>
        document.getElementById("menuButton").onclick = function () {
            document.getElementById("sideMenu").style.width = "250px";
        }
        document.getElementById("closeMenu").onclick = function () {
            document.getElementById("sideMenu").style.width = "0";
        }
    </script>
    </body>
</asp:Content>


<%@ Page Title="QuizzVita" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="QuizzVitaProyecto.Principal.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

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
        /* Estilos básicos para el modal */
        .modal {
            display: none; /* Por defecto, oculto */
            position: fixed;
            z-index: 1000;
            padding-top: 100px;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5);
        }

        .modal-content {
            background-color: #fefefe;
            margin: auto;
            padding: 20px;
            border: 1px solid #888;
            width: 80%;
            max-width: 400px;
            text-align: center;
        }

        .close {
            color: #aaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
            cursor: pointer;
        }

            .close:hover, .close:focus {
                color: black;
                text-decoration: none;
                cursor: pointer;
            }

        .btn {
            display: inline-block;
            margin: 10px;
            padding: 10px 20px;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }

        .btn-primary {
            background-color: #007bff;
        }

        .btn-secondary {
            background-color: #6c757d;
        }
    </style>

    <asp:Panel ID="Panel1" runat="server">
        <asp:Label ID="lblUserName" runat="server" Text=""></asp:Label>
        <div class="DesktopPrincipal" style="width: 100%; min-height: 100vh; position: relative; background: white; padding-bottom: 60px;">


            <div class="Quizzvita" style="width: 400px; height: 105px; left: 80px; top: 100px; position: absolute; text-align: left; color: black; font-size: 70px; font-family: CoffeeSpark; font-weight: 800;">
                QuizzVita
            </div>

            <img class="SinTexto1" style="width: 200px; height: 200px; left: 135px; top: 250px; position: absolute;" src="img/logo.png" />

            <div class="EllipseContainer" style="position: absolute; left: 500px; top: 70px; transform: translateX(0);">
                <div class="Ellipse3" style="width: 500px; height: 500px; position: absolute; background: rgba(164, 236, 210, 0.72); border-radius: 9999px; z-index: 1;"></div>
                <div class="Ellipse2" style="width: 500px; height: 500px; position: absolute; background: rgba(255, 255, 255, 0.72); left: 53px; top: 0px; border-radius: 9999px; z-index: 2;"></div>
                <div class="Ellipse1" style="width: 500px; height: 500px; position: absolute; background: #EFEDED; left: 110px; top: 0px; border-radius: 9999px; z-index: 3;"></div>
                <div class="TextoDentroDeLosCirculos" style="width: 400px; height: 400px; position: absolute; left: 160px; top: 80px; z-index: 4; text-align: center; color: black; font-size: 28px; font-family: Sarlotte; font-weight: 400; line-height: 1.5; padding: 20px;">
                    Descubre tu bienestar emocional a través de nuestros maravillosos quizzes interactivos. Nos preocupamos por tu salud mental y queremos ayudarte a identificar y enfrentar cualquier desafío.
               
                </div>
            </div>
            <!-- Modal de inicio de sesión -->
            <div id="loginModal" class="modal">
                <div class="modal-content">
                    <span class="close">&times;</span>
                    <h2>Inicia sesión o regístrate</h2>
                    <p>Para poder iniciar el Quizz, por favor inicia sesión o regístrate.</p>
                    <a href="/Principal/Home.aspx" class="btn btn-primary">Iniciar sesión</a>
                    <a href="/Registro.aspx" class="btn btn-secondary">Registrarse</a>
                </div>
            </div>
        </div>


        <script>
            window.onload = function () {
                // Verifica si el parámetro "showModal" está presente en la URL
                var urlParams = new URLSearchParams(window.location.search);
                if (urlParams.get('showModal') === 'true') {
                    // Mostrar el modal
                    var modal = document.getElementById("loginModal");
                    modal.style.display = "block";

                    // Cerrar el modal al hacer clic en la 'x'
                    document.querySelector(".close").onclick = function () {
                        modal.style.display = "none";
                    };

                    // Cerrar el modal al hacer clic fuera de él
                    window.onclick = function (event) {
                        if (event.target == modal) {
                            modal.style.display = "none";
                        }
                    };
                }
            }
</script>
    </asp:Panel>
</asp:Content>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Informacionapoyo.aspx.cs" Inherits="QuizzVitaProyecto.Informacionapoyo"  MasterPageFile="~/Site.Master"  %>

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

    /*body {
        font-family: 'Roboto', sans-serif;
        margin: 0;
        padding: 0;
    }

    .top-bar {
        background-color: #a6dfd0;
        padding: 10px;
        display: flex;
        justify-content: space-between;
        align-items: center;
    }

        .top-bar img {
            width: 30px;
            height: 30px;
        }

    .container {
        padding: 20px;
        max-width: 800px;
        margin: 0 auto;
        text-align: center;
    }

    .logo {
        width: 80px;
        height: auto;
        margin: 20px auto;
    }

    h1 {
        font-family: 'Rokkitt', serif;
        font-size: 2rem;
        color: #4b0082;
        margin-bottom: 20px;
    }

    p {
        font-size: 1rem;
        margin-bottom: 20px;
    }

    .question {
        text-align: left;
        margin: 20px 0;
    }

    button {
        background-color: #4b0082;
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }

        button:hover {
            background-color: #6a0dad;
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

    .blurred {
        filter: blur(5px);
    }*/
/*   CAMBNIOS*/
        body {
            font-family: Arial, sans-serif;
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
            color: white;
            background-color: #A2D5C6;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            text-align: center;
            cursor: pointer;
            flex: 1;
            margin: 5px;
        }

        .resource-buttons a:hover {
            background-color: #8EBDAE;
        }
        .contacts p {
            margin: 5px 0;
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
</style>
    <div class="main-content">
        <h1>Información de apoyo</h1>

        <div class="resources">
            <h2>Recursos sobre la salud mental</h2>
            <div class="resource-buttons">
                <a href="https://ayudaparadepresion.org.mx" target="_blank">Ayuda para la depresión</a>
                <a href="https://www.mayoclinic.org/es/healthy-lifestyle/stress-management/in-depth/stress-relievers/art-20047257">Manejo de estres</a>
                <a href="https://www.healthline.com/health/es/como-quitar-el-estres">Manejo de estres y ansiedad</a>
                <a href="https://www.cigna.com/es-us/knowledge-center/hw/alivio-del-estrs-y-relajacin-af1003spec">Alivio estres</a>
                <a href="https://www.gob.mx/salud/es/articulos/linea-de-la-vida-ayuda-profesional-para-personas-con-depresion?idiom=es">Ayuda depresión</a>
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


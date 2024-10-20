<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="respuestasEstres.aspx.cs" Inherits="QuizzVitaProyecto.QuizzEstres.respuestasEstres" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .logo {
            width: 70px;
            height: auto;
            margin-top: 5%;
            margin-bottom: 4%;
        }

        #encabezado {
            display: flex;
            flex-direction: column; /* Alinea los elementos verticalmente */
            justify-content: center; /* Centra verticalmente */
            align-items: center; /* Centra horizontalmente */
            text-align: center; /* Alinea el texto al centro */
            margin: 0 auto; /* Centra horizontalmente el div completo */
        }

        .custom-radio input[type="radio"] {
            transform: scale(1.5); /* Escala los botones de radio */
            margin-right: 10px; /* Espacio entre el botón y el texto */
        }
    </style>

    <div id="general" class="container row">
        <div class="col-xxl-12 col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 text-center">
            <img src="/Principal/img/logo.png" alt="Logo" class="logo" />
        </div>
        <div class="col-xxl-1 col-xl-1 col-lg-1 col-md-1 col-sm-1 col-1"></div>
        <div class="col-xxl-10 col-xl-10 col-lg-10 col-md-10 col-sm-10 col-10" style="background-color: rgb(239, 237, 237,0.25); padding-bottom: 5%">
            <div id="encabezado" style="margin-top: 5%; margin-bottom: 5%">
                <h3>¡Aquí estan tus respuestas!</h3>
            </div>
            <div id="form1" runat="server" class="col-xxl-12 col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12" style="margin-top: 3%; padding-left: 5%; padding-right: 5%">
                <div style="margin-bottom: 2%">
                    <label style="margin-bottom: 1%">1. En las últimas dos semanas, ¿con qué frecuencia te has sentido abrumado(a) por tus responsabilidades y tareas diarias?</label>
                    <div style="margin-left: 7%">
                        <asp:RadioButtonList ID="rblPregunta1" runat="server" CssClass="custom-radio">
                            <asp:ListItem Value="0">Nunca</asp:ListItem>
                            <asp:ListItem Value="1">Varios días</asp:ListItem>
                            <asp:ListItem Value="2">Más de la mitad de los días</asp:ListItem>
                            <asp:ListItem Value="3">Casi todos los días</asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div style="margin-bottom: 2%">
                    <label style="margin-bottom: 1%">2. ¿Con qué frecuencia has sentido que no tienes control sobre las cosas importantes en tu vida?</label>
                    <div style="margin-left: 7%">
                        <asp:RadioButtonList ID="rblPregunta2" runat="server" CssClass="custom-radio">
                            <asp:ListItem Value="0">Nunca</asp:ListItem>
                            <asp:ListItem Value="1">Rara vez</asp:ListItem>
                            <asp:ListItem Value="2">Algunas veces </asp:ListItem>
                            <asp:ListItem Value="3">Muy frecuentemente</asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div style="margin-bottom: 2%">
                    <label style="margin-bottom: 1%">3. ¿Con qué frecuencia has experimentado problemas para dormir debido a preocupaciones?</label>
                    <div style="margin-left: 7%">
                        <asp:RadioButtonList ID="rblPregunta3" runat="server" CssClass="custom-radio">
                            <asp:ListItem Value="0">Nunca</asp:ListItem>
                            <asp:ListItem Value="1">Rara vez</asp:ListItem>
                            <asp:ListItem Value="2">Frecuentemente</asp:ListItem>
                            <asp:ListItem Value="3">Muy frecuentemente</asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div style="margin-bottom: 2%">
                    <label style="margin-bottom: 1%">4. ¿Con qué frecuencia has sentido dificultad para relajarte?</label>
                    <div style="margin-left: 7%">
                        <asp:RadioButtonList ID="rblPregunta4" runat="server" CssClass="custom-radio">
                            <asp:ListItem Value="0">Nunca</asp:ListItem>
                            <asp:ListItem Value="1">Rara vez</asp:ListItem>
                            <asp:ListItem Value="2">Algunas veces</asp:ListItem>
                            <asp:ListItem Value="3">Muy frecuentemente</asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div style="margin-bottom: 2%">
                    <label style="margin-bottom: 1%">5. ¿Con qué frecuencia has tenido problemas para concentrarte debido al estrés?</label>
                    <div style="margin-left: 7%">
                        <asp:RadioButtonList ID="rblPregunta5" runat="server" CssClass="custom-radio">
                            <asp:ListItem Value="0">Nunca</asp:ListItem>
                            <asp:ListItem Value="1">Rara vez</asp:ListItem>
                            <asp:ListItem Value="2">Algunas veces</asp:ListItem>
                            <asp:ListItem Value="3">Muy frecuentemente</asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div style="margin-bottom: 2%">
                    <label style="margin-bottom: 1%">6. ¿Cuán seguido te has sentido nervioso(a) o ansioso(a) sin razón aparente?</label>
                    <div style="margin-left: 7%">
                        <asp:RadioButtonList ID="rblPregunta6" runat="server" CssClass="custom-radio">
                            <asp:ListItem Value="0">Nunca</asp:ListItem>
                            <asp:ListItem Value="1">Rara vez</asp:ListItem>
                            <asp:ListItem Value="2">Algunas veces</asp:ListItem>
                            <asp:ListItem Value="3">Muy frecuentemente</asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div style="margin-bottom: 2%">
                    <label style="margin-bottom: 1%">7. ¿Con qué frecuencia te has sentido agotado(a) incluso después de descansar?</label>
                    <div style="margin-left: 7%">
                        <asp:RadioButtonList ID="rblPregunta7" runat="server" CssClass="custom-radio">
                            <asp:ListItem Value="0">Nunca</asp:ListItem>
                            <asp:ListItem Value="1">Rara vez</asp:ListItem>
                            <asp:ListItem Value="2">Algunas veces</asp:ListItem>
                            <asp:ListItem Value="3">Muy frecuentemente</asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div style="margin-bottom: 2%">
                    <label style="margin-bottom: 1%">8. ¿Cuán seguido te has sentido irritado(a) o molesto(a) sin razón aparente?</label>
                    <div style="margin-left: 7%">
                        <asp:RadioButtonList ID="rblPregunta8" runat="server" CssClass="custom-radio">
                            <asp:ListItem Value="0">Nunca</asp:ListItem>
                            <asp:ListItem Value="1">Rara vez</asp:ListItem>
                            <asp:ListItem Value="2">Algunas veces</asp:ListItem>
                            <asp:ListItem Value="3">Muy frecuentemente</asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div style="margin-bottom: 2%">
                    <label style="margin-bottom: 1%">9. ¿Con qué frecuencia has sentido que las cosas te están sobrepasando?</label>

                    <div style="margin-left: 7%">
                        <asp:RadioButtonList ID="rblPregunta9" runat="server" CssClass="custom-radio">
                            <asp:ListItem Value="0">Nunca</asp:ListItem>
                            <asp:ListItem Value="1">Rara vez</asp:ListItem>
                            <asp:ListItem Value="2">Algunas veces</asp:ListItem>
                            <asp:ListItem Value="3">Muy frecuentemente</asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div style="margin-bottom: 2%">
                    <label style="margin-bottom: 1%">10. ¿Con qué frecuencia has experimentado síntomas físicos como dolores de cabeza, dolor de estómago, o tensión muscular debido al estrés?</label>
                    <div style="margin-left: 7%">
                        <asp:RadioButtonList ID="rblPregunta10" runat="server" CssClass="custom-radio">
                            <asp:ListItem Value="0">Nunca</asp:ListItem>
                            <asp:ListItem Value="1">Rara vez</asp:ListItem>
                            <asp:ListItem Value="2">Algunas veces</asp:ListItem>
                            <asp:ListItem Value="3">Muy frecuentemente</asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xxl-1 col-xl-1 col-lg-1 col-md-1 col-sm-1 col-1"></div>
    </div>
</asp:Content>

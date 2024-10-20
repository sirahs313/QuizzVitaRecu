<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="respuestasAnsiedad.aspx.cs" Inherits="QuizzVitaProyecto.QuizzAnsiedad.respuestasAnsiedad" %>

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
                    <label style="margin-bottom: 1%">1. ¿Te sientes nervioso(a), ansioso(a) o al borde de perder el control la mayoría de los días?</label>
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
                    <label style="margin-bottom: 1%">2. ¿Te resulta difícil controlar tus preocupaciones o detener el flujo constante de pensamientos ansiosos?</label>
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
                    <label style="margin-bottom: 1%">3. ¿Experimentas sudoración, palpitaciones o temblores en situaciones normales o cotidianas?</label>
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
                    <label style="margin-bottom: 1%">4. ¿Te sientes fatigado(a) o cansado(a) fácilmente, incluso sin haber realizado actividades físicas intensas?</label>
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
                    <label style="margin-bottom: 1%">5. ¿Tienes dificultad para concentrarte o te cuesta tomar decisiones debido a la preocupación?</label>
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
                    <label>6. ¿Te encuentras evitando situaciones o lugares por miedo a sentir ansiedad o pánico?</label>
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
                    <label style="margin-bottom: 1%">7. ¿Experimentas tensión muscular, dolor de cabeza o malestar general sin una causa física evidente?</label>
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
                    <label style="margin-bottom: 1%">8. ¿Tienes dificultad para dormir, ya sea para conciliar el sueño, mantenerte dormido(a), o te despiertas temprano con pensamientos ansiosos?</label>
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
                    <label style="margin-bottom: 1%">9. ¿Te sientes irritable o molesto(a) con facilidad, incluso por cosas que normalmente no te afectarían?</label>

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
                    <label style="margin-bottom: 1%">10. ¿Sientes que algo terrible va a suceder, aunque no puedas identificar una amenaza concreta?</label>
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

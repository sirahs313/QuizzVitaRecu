<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Resultados.aspx.cs" Inherits="QuizzVitaProyecto.Respuestas.Resultados" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        #contentContainer {
            padding: 10px;
            max-width: 800px;
            margin: 0 auto;
            text-align: center;
        }

        .logo {
            width: 60px;
            height: auto;
            margin: 5px auto;
        }

        #c{
            margin-top:3%;
        }

        #recGreen{
            padding-top:4%;
            padding-bottom:4%;
            padding-right:5%;
            padding-left:5%;
        }

        .custom-header { 
            background-color: rgba(37, 44, 42, 0.7);
            font-size: 15px;
        }

        .gridview-row { 
            height: 50px;
        }

        .gridview-d{
            font-size: 13px;
            background-color: rgba(0, 0, 0, 0) !important;
            border-top: 1px solid black;
            border-bottom: 1px solid black;
        }
    </style>

    <!-- Contenido Principal -->
    <div class="container" id="contentContainer">
        <img src="/Principal/img/logo.png" alt="Logo" class="logo" />
        <h2 style="margin-top: 3%; padding-bottom: 1%; border-bottom: 2px solid #A4ECD2;">Resultados</h2>
    </div>
    <div id="c" class="row col-xxl-12 col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
        <%--<div class="col-xxl-1 col-xl-1 col-lg-1 col-md-1 col-sm-1 col-1"></div>--%>
        <div id="recGreen" class="row col-xxl-12 col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12" style="background-color: rgba(202, 253, 235, 0.25) !important;">
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSourceResultados" Width="100%">
                <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" InsertVisible="False" SortExpression="ID" ItemStyle-HorizontalAlign="Center" ItemStyle-Height="50px" ItemStyle-CssClass="gridview-d"></asp:BoundField>
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" ItemStyle-HorizontalAlign="Center" ItemStyle-Height="50px" ItemStyle-CssClass="gridview-d"></asp:BoundField>
                    <asp:BoundField DataField="Apellidos" HeaderText="Apellidos" SortExpression="Apellidos" ItemStyle-HorizontalAlign="Center" ItemStyle-Height="50px" ItemStyle-CssClass="gridview-d"></asp:BoundField>
                    <asp:BoundField DataField="Puntaje" HeaderText="Puntaje" SortExpression="Puntaje" ItemStyle-HorizontalAlign="Center" ItemStyle-Height="50px" ItemStyle-CssClass="gridview-d"></asp:BoundField>
                    <asp:BoundField DataField="Quizz" HeaderText="Quizz" SortExpression="Quizz" ItemStyle-HorizontalAlign="Center" ItemStyle-Height="50px" ItemStyle-CssClass="gridview-d"></asp:BoundField>
                    <asp:BoundField DataField="Fecha" HeaderText="Fecha" SortExpression="Fecha" ItemStyle-HorizontalAlign="Center" DataFormatString="{0:yyyy-MM-dd}" ItemStyle-Height="50px" ItemStyle-CssClass="gridview-d"></asp:BoundField>
                    <asp:BoundField DataField="Edad" HeaderText="Edad" SortExpression="Edad" ItemStyle-HorizontalAlign="Center" ItemStyle-Height="50px" ItemStyle-CssClass="gridview-d"></asp:BoundField>
                </Columns>

                <EditRowStyle BackColor="#7C6F57" CssClass="gridview-row"></EditRowStyle>
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" CssClass="gridview-row"></FooterStyle>
                <HeaderStyle CssClass="custom-header gridview-row" Font-Bold="True" ForeColor="#A4ECD2" HorizontalAlign="Center"></HeaderStyle>
                <PagerStyle HorizontalAlign="Center" BackColor="#666666" ForeColor="White"></PagerStyle>
                <RowStyle BackColor="#E3EAEB"></RowStyle>
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" HorizontalAlign="Center"></SelectedRowStyle>
                <SortedAscendingCellStyle BackColor="#F8FAFA" HorizontalAlign="Center"></SortedAscendingCellStyle>
                <SortedAscendingHeaderStyle BackColor="#246B61" HorizontalAlign="Center"></SortedAscendingHeaderStyle>
                <SortedDescendingCellStyle BackColor="#D4DFE1" HorizontalAlign="Center"></SortedDescendingCellStyle>
                <SortedDescendingHeaderStyle BackColor="#15524A" HorizontalAlign="Center"></SortedDescendingHeaderStyle>
            </asp:GridView>
            <asp:SqlDataSource runat="server" ID="SqlDataSourceResultados" ConnectionString='<%$ ConnectionStrings:DefaultConnection %>' SelectCommand="SELECT r.result_id AS ID, u.Nombre, u.Apellidos, r.puntaje AS Puntaje, p.problem_name AS Quizz, r.fecha AS Fecha, u.Age AS Edad FROM results AS r INNER JOIN users AS u ON r.user_id = u.user_id INNER JOIN type_problem AS p ON r.problem_id = p.problem_id"></asp:SqlDataSource>
        </div>
        <%--<div class="col-xxl-1 col-xl-1 col-lg-1 col-md-1 col-sm-1 col-1"></div>--%>
    </div>

</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="MostrarVisitas.aspx.cs" Inherits="CtrlVisitasWeb.MostrarVisitas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row">
        <div class ="row mt-5">

            <asp:GridView ID="grillaVisitas"
                CssClass="table table-hover table-bordered"
                AutoGenerateColumns="false"
                ShowHeaderWhenEmpty="true"
                EmptyDataText="No Registros"
                runat ="server">

                <Columns>

                    <asp:BoundField HeaderText="RUT" DataField="RUT" />
                    <asp:BoundField HeaderText="Nombre" DataField="Nombre" />
                    <asp:BoundField HeaderText="Apellido" DataField="Apellido" />
                    <asp:BoundField HeaderText="Empresa" DataField="Empresa.Nombre" />
                    <asp:BoundField HeaderText="Estado" DataField="Estado" />
                    <asp:BoundField HeaderText="Ingreso" DataField="Ingreso" />
                    <asp:BoundField HeaderText="Salida" DataField="Salida" />





                </Columns>






            </asp:GridView>







        </div>






    </div>





</asp:Content>

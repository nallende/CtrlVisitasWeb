<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="MostrarVehiculo.aspx.cs" Inherits="CtrlVisitasWeb.MostrarVehiculo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
                        <h2>Datos Vehiculo</h2>

                        <div class="container">
                            <div class="col-auto">

                                <asp:TextBox ID="TextPatente" runat="server" Width="350px"></asp:TextBox>
                                Patente<br>

                                <asp:TextBox ID="TextTipo" runat="server" Width="350px"></asp:TextBox>
                                Tipo Vehiculo<br>

                                <asp:TextBox ID="TextColor" runat="server" Width="350px"></asp:TextBox>
                                Color<br>
                            </div>

                        </div>

                        <div class="row">

                            <div class="col-md-6">
                                <div>
                                    <asp:Button ID="btnCrearVehiculos" CssClass="btn btn-primary-spacing btn-info" OnClick="btnCrearVehiculos_Click" runat="server" Text="Enviar Info  Vehiculo" />


                                    <%--<asp:Button  id="btnactualizarVehiculos" CssClass="btn btn-primary-spacing btn-default"  runat="server" Text="Modificar Vehiculo" />--%>


                                    <%--<asp:Button  id="btneliminarVehiculos" CssClass="btn btn-primary -spacing btn-danger "  runat="server" Text="Eliminar Info  Vehiculo" />--%>

                                    <asp:Button ID="btnListarVehiculos" CssClass="btn btn-primary -spacing btn-warning " runat="server" Text="Listar Info  Vehiculo" />
                                </div>
                            </div>
                           </div> 
                        



</asp:Content>

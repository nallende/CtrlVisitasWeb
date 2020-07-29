<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="AdminUsuario.aspx.cs" Inherits="CtrlVisitasWeb.AdminUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

       <h2>Datos Usuario</h2>

                <div class="container">
                    <div class="col-auto">

                        <asp:TextBox ID="TextNombreUser" runat="server" Width="350px"></asp:TextBox>
                        Nombre Usuario<br>

                        <asp:TextBox ID="TextCorreoUser" runat="server" Width="350px"></asp:TextBox>
                       Correo Usuario<br>

                        <asp:TextBox ID="TextClave" runat="server" Width="350px"></asp:TextBox>
                        Clave<br>
                    </div>

                </div>



                <div class="row">

                    <div class="col-md-6">
                        <div>
                            <asp:Button ID="btnCrearUsuarios" CssClass="btn btn-primary-spacing btn-info" runat="server" Text="Guardar Usuario" />


                            <%--<asp:Button  id="btnactualizarVehiculos" CssClass="btn btn-primary-spacing btn-default"  runat="server" Text="Modificar Vehiculo" />--%>


                            <%--<asp:Button  id="btneliminarVehiculos" CssClass="btn btn-primary -spacing btn-danger "  runat="server" Text="Eliminar Info  Vehiculo" />--%>

                            <asp:Button ID="btnListarUsuarios" CssClass="btn btn-primary -spacing btn-warning " runat="server" Text="Listar Usuarios" />
                        </div>
                    </div>
                </div>
          
   


</asp:Content>









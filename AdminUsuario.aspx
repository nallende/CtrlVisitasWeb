<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="AdminUsuario.aspx.cs" Inherits="CtrlVisitasWeb.AdminUsuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 
    
    
    <h2>Datos Usuario</h2>
    <asp:ScriptManager ID="ScriptMGAdminnUsuario" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">

       <ContentTemplate>


        <div class="container">
            <div class="col-auto">

                <asp:TextBox ID="TextNombreUser" runat="server" Width="350px"></asp:TextBox>
                Nombre Usuario<br>
                <asp:RequiredFieldValidator CssClass="text-danger" ControlToValidate="TextNombreUser" ID="RequiredFieldValidator1"
                    runat="server" ErrorMessage="Debe Ingresar Nombre Usuario"></asp:RequiredFieldValidator><br />

                <asp:TextBox ID="TextCorreoUser" runat="server" Width="350px"></asp:TextBox>
                Correo Usuario<br>

                <asp:RequiredFieldValidator CssClass="text-danger" ControlToValidate="TextCorreoUser" ID="RequiredFieldValidator2"
                    runat="server" ErrorMessage="Debe Ingresar Correo Usuario"></asp:RequiredFieldValidator><br />

                <asp:TextBox ID="TextClave" runat="server" Width="350px"></asp:TextBox>
                Clave<br>

                <asp:RequiredFieldValidator CssClass="text-danger" ControlToValidate="TextClave" ID="RequiredFieldValidator3"
                    runat="server" ErrorMessage="Debe Ingresar Cñave Usuario"></asp:RequiredFieldValidator><br />


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

        </ContentTemplate>

    </asp:UpdatePanel>
   


</asp:Content>









<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ModificarVisita.aspx.cs" Inherits="CtrlVisitasWeb.ModificarVisita" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="-center jumbotron">
        <h2>Cambio Datos Visita</h2>

        <div class=" -center -row mt-5">

            <div class="col-auto">

                <asp:TextBox ID="TextBoxRut" runat="server" Width="350px"></asp:TextBox>
                RUT
                    <br />

                <%--<asp:RequiredFieldValidator CssClass="text-danger" ControlToValidate="TextBoxRut" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Debe Ingresar RUT"></asp:RequiredFieldValidator><br />--%>


                <asp:TextBox ID="TextBoxNombre" runat="server" Width="350px"></asp:TextBox>
                Nombre<br>

                <%--<asp:RequiredFieldValidator CssClass="text-danger" ControlToValidate="TextBoxNombre" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Debe Ingresar Nombre"></asp:RequiredFieldValidator><br />--%>

                <asp:TextBox ID="TextBoxApellido" runat="server" Width="350px"></asp:TextBox>
                Apellido<br>

                <%--  <asp:RequiredFieldValidator CssClass="text-danger" ControlToValidate="TextBoxApellido" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Debe Ingresar Apellido"></asp:RequiredFieldValidator><br />--%>

                <asp:TextBox ID="TextBoxEmpresa" runat="server" Width="350px"></asp:TextBox>
                Empresa o Independiente<br>

                <%--     <asp:RequiredFieldValidator CssClass="text-danger" ControlToValidate="TextBoxEmpresa" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Debe Ingresar Empresa o Independiente"></asp:RequiredFieldValidator><br />--%>

                <asp:TextBox ID="TextBoxFono" runat="server" Width="350px"></asp:TextBox>
                Fono<br>

                <%--<asp:RequiredFieldValidator CssClass="text-danger" ControlToValidate="TextBoxFono" ID="RequiredFieldValidator5" runat="server" ErrorMessage="Debe Ingresae Fono "></asp:RequiredFieldValidator><br />--%>
            </div>

            <div class="col-md-6">
                <div>

                    <asp:Button ID="btnModificarVisita" CssClass="btn btn-info-spacing btn-default" OnClick="btnModificarVisita_Click" runat="server" Text="Modificar Info Visita" />

                    <asp:Button ID="btnBuscarRUT" CssClass="btn btn-primary -spacing btn-warning " OnClick="btnBuscarRUT_Click" runat="server" Text="Buscar Visita" />
                </div>
            </div>
        </div>

    </div>
</asp:Content>

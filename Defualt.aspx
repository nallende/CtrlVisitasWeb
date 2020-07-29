<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Defualt.aspx.cs" Inherits="CtrlVisitasWeb.Defualt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="-center jumbotron">
        <h2 class="-center">Control de Acceso</h2>



        <div class=" -center -row mt-5">

            <h2>Datos Visita</h2>

            <div class=" -center -row mt-5">

                <div class="col-auto">

                    <asp:TextBox ID="TextBoxRut" OnTextChanged="TextBoxRut_TextChanged" runat="server" Width="350px"></asp:TextBox>
                    RUT
                    <br />

                    <asp:RequiredFieldValidator CssClass="text-danger" ControlToValidate="TextBoxRut" ID="RequiredFieldValidator1"  runat="server" ErrorMessage="Debe Ingresar RUT"></asp:RequiredFieldValidator><br />

                    <asp:TextBox ID="TextBoxNombre" runat="server" Width="350px"></asp:TextBox>
                    Nombre<br>

                    <asp:RequiredFieldValidator CssClass="text-danger" ControlToValidate="TextBoxNombre" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Debe Ingresar Nombre"></asp:RequiredFieldValidator><br />

                    <asp:TextBox ID="TextBoxApellido" runat="server" Width="350px"></asp:TextBox>
                    Apellido<br>

                    <asp:RequiredFieldValidator CssClass="text-danger" ControlToValidate="TextBoxApellido" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Debe Ingresar Apellido"></asp:RequiredFieldValidator><br />

                    <asp:TextBox ID="TextBoxEmpresa" runat="server" Width="350px"></asp:TextBox>
                    Empresa o Independiente<br>

                    <asp:RequiredFieldValidator CssClass="text-danger" ControlToValidate="TextBoxEmpresa" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Debe Ingresar Empresa o Independiente"></asp:RequiredFieldValidator><br />

                    <asp:TextBox ID="TextBoxFono" runat="server" Width="350px"></asp:TextBox>
                    Fono<br>

                    <asp:RequiredFieldValidator CssClass="text-danger" ControlToValidate="TextBoxFono" ID="RequiredFieldValidator5" runat="server" ErrorMessage="Debe Ingresae Fono "></asp:RequiredFieldValidator><br />


                    <div class="form group-right">
                        <h3>Estado</h3>
                        <asp:RadioButtonList ID="EstadoRBL" runat="server">
                            <asp:ListItem Text=" Insitu" Value="  Insitu" Selected="True">  </asp:ListItem>
                            <asp:ListItem Text=" OffPremise" Value="  OffPremise" Selected="False">  </asp:ListItem>
                        </asp:RadioButtonList>Estado<br>
                    </div>
                    <div class="form group-right">
                        <asp:TextBox ID="fechaHoraIngreso" runat="server"></asp:TextBox>
                        <asp:Button ID="btnIngreso" CssClass="btn btn-info -spacing btn-success " runat="server" Text="Ingreso" OnClick="Ingreso_Click" />

                        <asp:TextBox ID="fechaHoraEgreso" runat="server" CausesValidation="False"></asp:TextBox>
                        <asp:Button ID="btnEgreso" CssClass="btn btn-warning -spacing btn-danger " runat="server" Text="Salida" OnClick="Egreso_Click" />
                    </div>

                </div>
                <br />

                <div class="row">

                    <div class="col-md-6">
                        <div>
                            <asp:Button ID="btnCrearVisita" CssClass="btn btn-primary-spacing btn-info" OnClick="btnCrearVisita_Click" runat="server" Text="Enviar Info Visita" />
                            <%--<asp:Button  id="btnModificarVisita" CssClass="btn btn-primary-spacing btn-default"  runat="server" Text="Modificar Info Visita" />--%>
                            <%--<asp:Button  id="btnEliminarVisita" CssClass="btn btn-primary -spacing btn-danger "  runat="server" Text="Eliminar Info Visita" />--%>
                            <asp:Button ID="btnListarVisita" CssClass="btn btn-primary -spacing btn-warning " runat="server" Text="Listar Info  Visita" />
                        </div>
                    </div>

                </div>
                <br />


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
            </div>
    </div>
    </div>


</asp:Content>

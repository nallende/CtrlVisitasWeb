<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="MostrarVisitas.aspx.cs" Inherits="CtrlVisitasWeb.MostrarVisitas" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">

        <ContentTemplate>



            <div>
                <div class="row mt-5">
                    <div class="col-lg-6 mx-auto">
                        <asp:DropDownList class="-right" ID="estadoDDL" Enabled="false" AutoPostBack="true" OnSelectedIndexChanged="estadoDDL_SelectedIndexChanged" runat="server">

                            <asp:ListItem Text=" Insitu" Value="  Insitu" Selected="True">  </asp:ListItem>
                            <asp:ListItem Text=" OffPremise" Value="  OffPremise">  </asp:ListItem>

                        </asp:DropDownList>
                        <asp:CheckBox ID="filtroEstado" Text="Todos" Checked="true" runat="server" AutoPostBack="true" OnCheckedChanged="filtroEstado_CheckedChanged" />
                    </div>
                </div>
                <br />


                <div>
                    <div class=" -center -row mt-5">
                        <asp:GridView AutoPostback="true" ID="grillaVisitas"
                            CssClass="table -center table-hover table-bordered"
                            AutoGenerateColumns="false"
                            ShowHeaderWhenEmpty="true"
                            EmptyDataText="No Registros"
                            runat="server">

                            <Columns>

                                <asp:BoundField HeaderText="RUT" DataField="RUT" />
                                <asp:BoundField HeaderText="Nombre" DataField="Nombre" />
                                <asp:BoundField HeaderText="Apellido" DataField="Apellido" />
                                <asp:BoundField HeaderText="Empresa" DataField="Empresa" />
                                <asp:BoundField HeaderText="Fono" DataField="Fono" />
                                <asp:BoundField HeaderText="Estado" DataField="Estado" />
                                <asp:BoundField HeaderText="Ingreso" DataField="Ingreso" />
                                <asp:BoundField HeaderText="Salida" DataField="Salida" />

                            </Columns>

                        </asp:GridView>

                    </div>

                </div>

            </div>

        </ContentTemplate>

    </asp:UpdatePanel>

</asp:Content>

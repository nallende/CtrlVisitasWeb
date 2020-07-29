<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="AgregarVisita.aspx.cs" Inherits="CtrlVisitasWeb.AgregarVisita" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<div class="jumbotron">
    <div class="row mt-5">

        <div class="col -lg-6 mx-auto">

            <div class="card">

                <div class="card-header bg-primary text-white">

                    <h3>Ingresar Visita </h3>
                    </div>

                <div class="card-body">
                    <div class="form-group">
                    <label for="rutTxt">RUT</label>
                        <asp:TextBox Id="rutTxt" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                            <div class="card-body">
                            <div class="form-group">
                            <label for="nombreTxt">Nombre</label>
                                <asp:TextBox Id="nombreTxt" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>

                  <div class="card-body">
                    <div class="form-group">
                    <label for="apellidoTxt">Apellido</label>
                        <asp:TextBox Id="apellidoTxt" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>  

                </div>
            </div>
        </div>    

    </div>

</div>







            </div>

        </div>
      
    </div>



</asp:Content>

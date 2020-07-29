<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Defualt.aspx.cs" Inherits="CtrlVisitasWeb.Defualt" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<div class="jumbotron">
        <h2>Control de Acceso</h2>


 
    <div class="container">

           <h2>Datos Visita</h2>

         <div class="row ">
      
                  <div class="col-auto">

                        <asp:TextBox ID="TextBoxRut" runat="server" Width="350px"></asp:TextBox> RUT<br>    
        
                        <asp:TextBox ID="TextBoxNombre" runat="server" Width="350px"></asp:TextBox> Nombre<br>

                        <asp:TextBox ID="TextBoxApellido" runat="server" Width="350px"></asp:TextBox> Apellido<br>

                        <asp:TextBox ID="TextBoxEmpresa" runat="server" Width="350px"></asp:TextBox> Empresa<br>

                        <asp:TextBox ID="TextBoxFono" runat="server" Width="350px"></asp:TextBox> Fono<br>


                      <div class="form group-align-right" >
                          <h3>Estado</h3>
                        <asp:RadioButtonList ID="EstadoRBL" runat="server"  >
                        <asp:ListItem Text=" Insitu" Value="  Insitu" Selected="True">  </asp:ListItem>
                        <asp:ListItem Text=" OffPremise" Value="  OffPremise" Selected="False">  </asp:ListItem>
                        </asp:RadioButtonList>Estado<br>
                        </div>
                      <div class="form group-align-right" >
                        <asp:textbox id="fechaHoraIngreso" runat="server" ></asp:textbox>
                        <asp:button id="btnIngreso" CssClass="btn btn-info -spacing btn-success " runat="server" text="Ingreso" onclick="Ingreso_Click"/>

                        <asp:textbox id="fechaHoraEgreso" runat="server" ></asp:textbox>
                        <asp:button id="btnEgreso" CssClass="btn btn-warning -spacing btn-danger " runat="server" text="Salida" onclick="Egreso_Click" />
                      </div>  
                      
            </div> 

             <div class="row">
     
                                                <div class="col-md-6">
                                                    <div > 
                                                         <asp:Button  id="btnCrearVisita"  CssClass="btn btn-primary-spacing btn-info" OnClick="btnCrearVisita_Click"  runat="server" Text="Enviar Info Visita" />
                                                        <%--<asp:Button  id="btnModificarVisita" CssClass="btn btn-primary-spacing btn-default"  runat="server" Text="Modificar Info Visita" />--%>
                                                        <%--<asp:Button  id="btnEliminarVisita" CssClass="btn btn-primary -spacing btn-danger "  runat="server" Text="Eliminar Info Visita" />--%>
                                                        <asp:Button  id="btnListarVisita" CssClass="btn btn-primary -spacing btn-warning "  runat="server" Text="Listar Info  Visita" />
                                                    </div> 
                                                </div>


                            </div>
              </div>                                              
           
              <h2>Datos Vehiculo</h2>

           <div class="container">
                 <div class="col-auto">

                         <asp:TextBox ID="TextPatente" runat="server" Width="350px"></asp:TextBox> Patente<br>    
        
                         <asp:TextBox ID="TextTipo" runat="server" Width="350px"></asp:TextBox> Tipo Vehiculo<br>

                         <asp:TextBox ID="TextColor" runat="server" Width="350px"></asp:TextBox> Color<br>

                     
                     </div>

          </div>



    <div class="row">
     
        <div class="col-md-6">
            <div > 
                <asp:Button id="btnCrearVehiculos" CssClass="btn btn-primary-spacing btn-info"  OnClick="btnCrearVehiculos_Click" runat="server" Text="Enviar Info  Vehiculo" />
                                
                               
                <%--<asp:Button  id="btnactualizarVehiculos" CssClass="btn btn-primary-spacing btn-default"  runat="server" Text="Modificar Vehiculo" />--%>
                              
                               
                <%--<asp:Button  id="btneliminarVehiculos" CssClass="btn btn-primary -spacing btn-danger "  runat="server" Text="Eliminar Info  Vehiculo" />--%>

                <asp:Button  id="btnListarVehiculos" CssClass="btn btn-primary -spacing btn-warning "  runat="server" Text="Listar Info  Vehiculo" />
            </div> 
        </div>
        </div>
    </div>

</div>
</asp:Content>

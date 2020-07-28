<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Defualt.aspx.cs" Inherits="CtrlVisitasWeb.Defualt" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<div class="jumbotron">
        <h2>Control de Acceso</h2>

<div class="container">

       <div class="row ">
      
                  <div class="col-auto">

                        <asp:TextBox ID="TextEmpresa" runat="server" Width="350px"></asp:TextBox>Empresa<br>    
        
                        <asp:TextBox ID="TextContacto" runat="server" Width="350px"></asp:TextBox>Contacto<br>

                        <asp:TextBox ID="TextFono" runat="server" Width="350px"></asp:TextBox>Fono<br>
        </div>

                                                <div class="row">
     
                                                        <div class="col-md-6">
                                                            <div > 
                                                                <asp:Button id="btnCrearEmpresa" CssClass="btn btn-primary-spacing btn-default"  runat="server" Text="Enviar Info Empresa" />
                                
                               
                                                                <asp:Button  id="btnModificarEmpresa" CssClass="btn btn-primary-spacing btn-default"  runat="server" Text="Modificar Empresa" />
                              
                               
                                                                <asp:Button  id="btnEliminarEmpresa" CssClass="btn btn-primary -spacing btn-danger "  runat="server" Text="Eliminar Info Empresa" />

                                                                <asp:Button  id="btnListarEmpresa" CssClass="btn btn-primary -spacing btn-success "  runat="server" Text="Listar Info  Empresa" />
                                                            </div> 
                                                        </div>
                        </div>

           </div>

      </div>  
 
    <div class="container">

           <h2>Datos Visita</h2>

         <div class="row ">
      
                  <div class="col-auto">

                        <asp:TextBox ID="TextBoxRut" runat="server" Width="350px"></asp:TextBox>RUT<br>    
        
                        <asp:TextBox ID="TextBoxNombre" runat="server" Width="350px"></asp:TextBox>Nombre<br>

                        <asp:TextBox ID="TextBoxApellido" runat="server" Width="350px"></asp:TextBox>Apellido<br>


                      <div class="form group" >
                        <asp:RadioButtonList ID="EstadoRBL" runat="server" Width="350px" >
                        <asp:ListItem Text="Insitu" Value="Insitu" Selected="True">  </asp:ListItem>
                        <asp:ListItem Text="OffPremise" Value="OffPremise" Selected="False">  </asp:ListItem>
                        </asp:RadioButtonList>Estado<br>
                        </div>

                        <asp:textbox id="fechaHoraIngreso" runat="server" xmlns:asp="#unknown"></asp:textbox>
                        <asp:button id="btnIngreso" CssClass="btn btn-primary -spacing btn-success " runat="server" text="Ingreso" onclick="Ingreso_Click" xmlns:asp="#unknown" />

                       
                        <asp:textbox id="fechaHoraEgreso" runat="server" xmlns:asp="#unknown"></asp:textbox>
                        <asp:button id="btnEgreso" CssClass="btn btn-primary -spacing btn-danger " runat="server" text="Salida" onclick="Egreso_Click" xmlns:asp="#unknown" />

                      
            </div> 

             <div class="row">
     
                                                <div class="col-md-6">
                                                    <div > 
                                                         <asp:Button  id="btnCrearVisita" CssClass="btn btn-primary-spacing btn-default"  runat="server" Text="Enviar Info Visita" />
                                
                               
                                                        <asp:Button  id="btnModificarVisita" CssClass="btn btn-primary-spacing btn-default"  runat="server" Text="Modificar Info Visita" />
                              
                               
                                                        <asp:Button  id="btnEliminarVisita" CssClass="btn btn-primary -spacing btn-danger "  runat="server" Text="Eliminar Info Visita" />

                                                        <asp:Button  id="btnListarVisita" CssClass="btn btn-primary -spacing btn-success "  runat="server" Text="Listar Info  Visita" />
                                                    </div> 
                                                </div>


                            </div>
              </div>                                              
           
              <h2>Datos Vehiculo</h2>

           <div class="container">
                 <div class="col-auto">

                         <asp:TextBox ID="TextPatente" runat="server" Width="350px"></asp:TextBox>Patente<br>    
        
                         <asp:TextBox ID="TextTipo" runat="server" Width="350px"></asp:TextBox>Tipo Vehiculo<br>

                         <asp:TextBox ID="TextColor" runat="server" Width="350px"></asp:TextBox>Color<br>

                     
                     </div>

          </div>



    <div class="row">
     
        <div class="col-md-6">
            <div > 
                <asp:Button id="btnCrearVehiculos" CssClass="btn btn-primary-spacing btn-default"  runat="server" Text="Enviar Info  Vehiculo" />
                                
                               
                <asp:Button  id="btnactualizarVehiculos" CssClass="btn btn-primary-spacing btn-default"  runat="server" Text="Modificar Vehiculo" />
                              
                               
                <asp:Button  id="btneliminarVehiculos" CssClass="btn btn-primary -spacing btn-danger "  runat="server" Text="Eliminar Info  Vehiculo" />

                <asp:Button  id="btnListarVehiculos" CssClass="btn btn-primary -spacing btn-success "  runat="server" Text="Listar Info  Vehiculo" />
            </div> 
        </div>
        </div>
    </div>

</div>
</asp:Content>

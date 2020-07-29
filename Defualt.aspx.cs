using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VisitasModel;
using VisitasModel.DAL;

namespace CtrlVisitasWeb
{
    public partial class Defualt : System.Web.UI.Page
    {
        private IVehiculosDAL vehiculosDAL = new VehiculosDalDB();
        private IVisitasDAL visitasDAL = new VisitasDalDB();
        

        protected void Page_Load(object sender, EventArgs e)
        {
            //TODO :

        }

        protected void Ingreso_Click(object sender, EventArgs e)
        {
            fechaHoraIngreso.Text = DateTime.Now.ToString("MM/dd/yyyy HH:mm:ss");
        }

        protected void Egreso_Click(object sender, EventArgs e)
        {
            fechaHoraEgreso.Text = DateTime.Now.ToString("MM/dd/yyyy HH:mm:ss");
        }

        protected void btnCrearVisita_Click(object sender, EventArgs e)
        {
            if (Page.IsValid) {

            Visita visita = new Visita();
            visita.Rut = this.TextBoxRut.Text.Trim();
            visita.Nombre = this.TextBoxNombre.Text.Trim();
            visita.Apellido = this.TextBoxApellido.Text.Trim();
            visita.Empresa = this.TextBoxEmpresa.Text.Trim();
            visita.Fono = Convert.ToInt32(this.TextBoxFono.Text.Trim());
            visita.Estado = this.EstadoRBL.SelectedValue;
            visita.Ingreso = Convert.ToDateTime(this.fechaHoraIngreso.Text.Trim());
            visita.Salida = Convert.ToDateTime(this.fechaHoraEgreso.Text.Trim());

            this.visitasDAL.AgregrarVisita(visita);
            Response.Redirect("MostrarVisitas.aspx");
        }

       }

        protected void btnCrearVehiculos_Click(object sender, EventArgs e)
        {
            Vehiculo vehiculo = new Vehiculo();
            vehiculo.Patente = this.TextPatente.Text.Trim();
            vehiculo.Tipo = this.TextTipo.Text.Trim();
            vehiculo.Color = this.TextColor.Text.Trim();
            this.vehiculosDAL.ObtenerVehiculos();
            Response.Redirect("MostrarVisita.aspx");

        }

        protected void TextBoxRut_TextChanged(object sender, EventArgs e)
        {

            string rut = TextBoxRut.Text;

           bool valid =  validarRut(rut);

        }
            bool validarRut(string rut)
            {
               
                {


                    bool validacion = false;
                    try
                    {
                        rut = rut.ToUpper();
                        rut = rut.Replace(".", "");
                        rut = rut.Replace("-", "");
                        int rutAux = int.Parse(rut.Substring(0, rut.Length - 1));

                        char dv = char.Parse(rut.Substring(rut.Length - 1, 1));

                        int m = 0, s = 1;
                        for (; rutAux != 0; rutAux /= 10)
                        {
                            s = (s + rutAux % 10 * (9 - m++ % 6)) % 11;
                        }
                        if (dv == (char)(s != 0 ? s + 47 : 75))
                        {
                            validacion = true;
                        }
                    }
                    catch (Exception )
                    {
                    
                    }
                    return validacion;
                }

            } 
        }
    }

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
     
        private IVisitasDAL visitasDAL = new VisitasDalDB();


        protected void Page_Load(object sender, EventArgs e)
        {
           

        }

        protected void Ingreso_Click(object sender, EventArgs e)
        {
            fechaHoraIngreso.Text = DateTime.Now.ToString("MM/dd/yyyy HH:mm:ss");
        }

        protected void Egreso_Click(object sender, EventArgs e)
        {
            fechaHoraEgreso.Text = DateTime.Now.ToString("MM/dd/yyyy HH:mm:ss");
        }

        protected void BtnCrearVisita_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid)
            {

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

    

        protected void RutCustomValidator_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string rut = TextBoxRut.Text.Trim();
            bool validacion = true;

            if (rut.Length != 9)
            {
                validacion = false;
                this.rutCustomValidator.ErrorMessage = "El largo del RUT no corresponde";
            }else if( rut.Split('-').Length !=2 || rut.Split('-')[1].Length != 1)
            {
                validacion = false;
                this.rutCustomValidator.ErrorMessage = "Debe ingresae digito verificador";
            }
            else
            {
                Visita visitaExistente = this.visitasDAL.Obtener(rut);
                if(visitaExistente != null)
                {
                    validacion = false;
                    this.rutCustomValidator.ErrorMessage = "Rut ya Existe";
                }
            }
            args.IsValid = validacion;
        }

        protected void btnListarVisita_Click(object sender, EventArgs e)
        {
            //Response.Redirect("MostrarVisita.aspx");
            Server.Transfer("MostrarVisita.aspx");
        }
    }
}

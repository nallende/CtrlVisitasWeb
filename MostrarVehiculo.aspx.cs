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
    public partial class MostrarVehiculo : System.Web.UI.Page
    {

        private IVehiculosDAL vehiculosDAL = new VehiculosDalDB();

        protected void btnCrearVehiculos_Click(object sender, EventArgs e)
        {
            Vehiculo vehiculo = new Vehiculo();
            vehiculo.Patente = this.TextPatente.Text.Trim();
            vehiculo.Tipo = this.TextTipo.Text.Trim();
            vehiculo.Color = this.TextColor.Text.Trim();
            this.vehiculosDAL.ObtenerVehiculos();
            Response.Redirect("MostrarVisita.aspx");

        }


        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}
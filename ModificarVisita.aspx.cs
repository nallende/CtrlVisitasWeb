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
    public partial class ModificarVisita : System.Web.UI.Page
    {
        private IVisitasDAL visitasDAL = new VisitasDalDB();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnModificarVisita_Click(object sender, EventArgs e)
        {

        }
        Visita visita = new Visita();
        protected void btnBuscarRUT_Click(object sender, EventArgs e)
        {
            string busc;
            try
            {
                string rut_Buscado = this.TextBoxRut.Text.Trim();
                Visita v = visitasDAL.Obtener(rut_Buscado);
                this.TextBoxNombre.Text = v.Nombre.ToString();
                this.TextBoxApellido.Text = v.Apellido.ToString();
                this.TextBoxEmpresa.Text = v.Empresa.ToString();
                this.TextBoxFono.Text = v.Fono.ToString();
                busc = "Busquedad Existosa";
            }
            catch (Exception ex)
            {

                busc = ex.Message;
            }

        }
    }
}
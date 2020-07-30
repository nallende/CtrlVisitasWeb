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
    public partial class MostrarVisitas : System.Web.UI.Page
    {
        private IVisitasDAL visitasDAL = new VisitasDalDB();


        private void cargarGrillaVisitas()
        {
            List<Visita> visitas;
            if (this.filtroEstado.Checked)
            {
                visitas = this.visitasDAL.ObtenerVisitas();
            }
            else
            {
                visitas = this.visitasDAL.ObtenerVisitas(this.estadoDDL.SelectedValue);
            }
            this.cargarGrillaVisitas(visitas);
        }

        private void cargarGrillaVisitas(List<Visita> visitas)
        {
            this.grillaVisitas.DataSource = visitas;
            this.grillaVisitas.DataBind();

        }
     

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.cargarGrillaVisitas();
            }
        }

        protected void estadoDDL_SelectedIndexChanged(object sender, EventArgs e)
        {
            this.cargarGrillaVisitas();

        }

        protected void filtroEstado_CheckedChanged(object sender, EventArgs e)
        {
            this.estadoDDL.Enabled = !this.filtroEstado.Checked;
            this.cargarGrillaVisitas();
        }

        public void grillaVisitas_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Eliminar")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                this.visitasDAL.EliminarVisita(id);
                this.cargarGrillaVisitas();
            }
        }

       
    }
}
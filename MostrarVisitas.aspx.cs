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


        private void cargarGrillaVisitas(List<Visita> visitas)
        {
            this.grillaVisitas.DataSource = visitas;
            this.grillaVisitas.DataBind();

        }
     

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.cargarGrillaVisitas(this.visitasDAL.ObtenerVisitas());
            }
        }
    }
}
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
        private IVisitasDAL visitaDal = new VisitasDalDB();


       // private void CargarGrillaVisitas(List<Visita> visitas);
         //   this





        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}
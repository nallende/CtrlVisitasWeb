using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CtrlVisitasWeb
{
    public partial class Defualt : System.Web.UI.Page
    {
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
    }
}
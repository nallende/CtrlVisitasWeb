using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using VisitasModel;
using VisitasModel.DAL;

namespace CtrlVisitasWeb
{
    public partial class Login : System.Web.UI.Page
    {
        private IUsuarioDAL usuarioDAL = new UsuarioDalDB();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.User.Identity.IsAuthenticated)
            {
                Response.Redirect("Defualt.aspx");

            }
        }

        protected void LoginForm_Authenticate(object sender, AuthenticateEventArgs e)
        {
          

            string user = this.LoginForm.UserName;
            string pass = this.LoginForm.Password;
            Usuario usuario = this.usuarioDAL.GetUsuario(user, pass);
            //si el login es correcto

            if(usuario!= null)
            {
                Session["usuario"] = usuario;
                FormsAuthentication.RedirectFromLoginPage(usuario.Nombre, this.LoginForm.RememberMeSet);
            }


        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CtrlVisitasWeb
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginForm_Authenticate(object sender, AuthenticateEventArgs e)
        {
            string usuario = "admin";
            string clave = "admin";


            string user = this.LoginForm.UserName;
            string pass = this.LoginForm.Password;

            //si el login es correcto

            if(user == usuario && clave == pass)
            {

                FormsAuthentication.RedirectFromLoginPage(usuario, this.LoginForm.RememberMeSet);
            }


        }
    }
}
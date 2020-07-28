<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CtrlVisitasWeb.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
     <link href="Content/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Login ID="LoginForm" runat="server" TextboxStyle-CssClass ="form-Control" 
                onAuthenticate="LoginForm_Authenticate"
                Failure-TextStyle ="text-danger"
                FailureText=" Datos No Validos"
                Login-Buttonstyle="btn-btn-primary">

               


            </asp:Login>


        </div>
    </form>
</body>
</html>

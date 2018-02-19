<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLoginPanel.aspx.cs" Inherits="HotelPacific_MS.AdminLoginPanel" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <script src="bootstrap/jquery.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <title>HP - Adimin Login </title>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" />
    <link href="StyleSheets/LoginUI_Admin_SS.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4">
                    <div class="container-fluid" id="LoginUIElementContainer">
                        <br />
                        <br />
                        <h1 class="Log_inTag" style="text-align: center">Log-In</h1>
                        <br />

                        <div class="form-group">
                            <div class="input-group">
                                <span class="input-group-addon" style="background-color: rgba(0,0,0,.3); color: white"><i class="fa fa-user-o" aria-hidden="true"></i></span>
                                <asp:TextBox ID="TextBox1" CssClass="form-control" placeholder="User Name" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="input-group">
                                <span class="input-group-addon" style="background-color: rgba(0,0,0,.3); color: white"><i class="fa fa-unlock-alt" aria-hidden="true"></i></span>
                                <asp:TextBox ID="TextBox2" CssClass="form-control" placeholder="Password" TextMode="Password" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <asp:Button ID="Button1" CssClass="btn-danger" runat="server" Text="Sign In" />
                        <br />
                        <br />
                        <div class="text-center"><asp:CheckBox ID="CheckBox1" Text="Remember me" runat="server" /></div>
                        <div class="text-center"><a href="#" id="forgotPasswordTag"> Forgot Password ? <i class="fa fa-arrow-circle-right" aria-hidden="true"></i> </a></div>
                        
                    </div>
                    <div class="col-md-4"></div>
                </div>
            </div>
            </div>
    </form>
</body>
</html>

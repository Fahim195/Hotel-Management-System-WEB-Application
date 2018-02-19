<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserReservationForm.aspx.cs" Inherits="HotelPacific_MS.UserReservationForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Reservatin</title>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <script src="bootstrap/jquery.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" />
    <link href="StyleSheets/Home_User_SS.css" rel="stylesheet" />
    <link href="StyleSheets/UserReservation_SS.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style6 {
            height: 30px;
        }

        .auto-style7 {
            height: 40px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid">
            <div class="row" id="firstpanel">
                <div class="col-md-1">
                </div>
                <div class="col-md-3">
                </div>
                <div class="col-md-6">
                    <div class="pull-left">
                        <h2><i class="fa fa-phone" aria-hidden="true"></i>+99-012-098756</h2>
                    </div>
                    <div class="pull-right">
                        <p id="connectWithUsTAG">Connect with us <i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i></p>
                        <a href="https://www.facebook.com/PanPacificSonargaonDhaka/" target="_blank" class="icon"><i class="fa fa-facebook-square" aria-hidden="true"></i></a>
                        <a href="https://twitter.com/panpacific?lang=en" target="_blank" class="icon"><i class="fa fa-twitter-square" aria-hidden="true"></i></a>
                        <a href="https://en.wikipedia.org/wiki/Pan_Pacific_Hotels_and_Resorts" target="_blank" class="icon"><i class="fa fa-wikipedia-w" aria-hidden="true"></i></a>
                    </div>
                </div>
                <div class="col-md-2">
                    <div class="pull-right" style="padding-top: 12px; padding-bottom: 2px;">
                        <a href="AdminLoginPanel.aspx" style="text-decoration: none; background-color: #C9302C; color: white; padding: 6px 12px; display: inline-block; line-height: 1.42857143; border: 1px solid transparent; border-radius: 4px;">Admin Login</a>

                    </div>
                </div>
            </div>
        </div>
        <div>
            <nav class="navbar navbar-default">
                <div class="container-fluid">
                    <div class="container">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <a class="navbar-brand" href="Home_User.aspx"><i class="fa fa-header" aria-hidden="true" style="color: #D25400"></i>otel <i class="fa fa-product-hunt" aria-hidden="true" style="color: #D25400"></i>acific</a>
                        </div>
                        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                            <ul class="nav navbar-nav">
                                <li><a href="Home_User.aspx">Home</a></li>
                                <li><a href="#">Reservation</a></li>
                                <li><a href="#">About</a></li>
                            </ul>
                        </div>

                    </div>
                </div>
            </nav>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-md-4" style="border:1px solid black">
                    <table class="nav-justified">
                        <tr>
                            <td class="auto-style7">
                                <asp:Label ID="Label1" runat="server" Text="User ID: "></asp:Label></td>
                            <td class="auto-style7">
                                <asp:TextBox ID="TextBox1" CssClass="textboxStyle" runat="server"></asp:TextBox></td>

                        </tr>
                        <tr>
                            <td class="auto-style7">
                                <asp:Label ID="Label2" runat="server" Text="Name: "></asp:Label></td>
                            <td class="auto-style7">
                                <asp:TextBox ID="TextBox2" CssClass="textboxStyle" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td class="auto-style7">
                                <asp:Label ID="Label3" runat="server" Text="DoB: "></asp:Label></td>
                            <td class="auto-style7">
                                <asp:TextBox ID="TextBox3" CssClass="textboxStyle" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td class="auto-style7">
                                <asp:Label ID="Label4" runat="server" Text="Age: "></asp:Label></td>
                            <td class="auto-style7">
                                <asp:TextBox ID="TextBox4" CssClass="textboxStyle" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td class="auto-style7">
                                <asp:Label ID="Label10" runat="server" Text="Sex: "></asp:Label></td>
                            <td class="auto-style7">
                                <asp:TextBox ID="TextBox10" CssClass="textboxStyle" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td class="auto-style7">
                                <asp:Label ID="Label5" runat="server" Text="Profession: "></asp:Label></td>
                            <td class="auto-style7">
                                <asp:TextBox ID="TextBox5" CssClass="textboxStyle" runat="server"></asp:TextBox></td>

                        </tr>
                        <tr>
                            <td class="auto-style7">
                                <asp:Label ID="Label6" runat="server" Text="Profession Address: "></asp:Label></td>
                            <td class="auto-style7">
                                <asp:TextBox ID="TextBox6" CssClass="textboxStyle" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td class="auto-style7">
                                <asp:Label ID="Label7" runat="server" Text="Permanent Address:"></asp:Label></td>
                            <td class="auto-style7">
                                <asp:TextBox ID="TextBox7" CssClass="textboxStyle" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td class="auto-style7">
                                <asp:Label ID="Label8" runat="server" Text="Contact No: "></asp:Label></td>
                            <td class="auto-style7">
                                <div class="form-group" style="padding-top:0px;margin-bottom:0px;">
                                <div class="input-group" style="padding-top:0px;">
                                    <span class="input-group-addon" style="font-weight:400">+880-</span>
                                    <asp:TextBox ID="TextBox8" CssClass="textboxStyle form-control" style="width:113px;" runat="server" ></asp:TextBox>
                                </div>
                            </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style7">
                                <asp:Label ID="Label9" runat="server" Text="Email: "></asp:Label></td>
                            <td class="auto-style7">
                                <asp:TextBox ID="TextBox9" CssClass="textboxStyle" runat="server"></asp:TextBox></td>
                        </tr>
                    </table>
                    <br />
                </div>
                <div class="col-md-4" style="border:1px solid black">
                    <table class="nav-justified">
                        <tr>
                            <td class="auto-style7">
                                <asp:Label ID="Label11" runat="server" Text="NID / Passport: "></asp:Label></td>
                            <td class="auto-style7">
                                <asp:TextBox ID="TextBox11" CssClass="textboxStyle" runat="server"></asp:TextBox></td>

                        </tr>
                        <tr>
                            <td class="auto-style7">
                                <asp:Label ID="Label12" runat="server" Text="Room ID: "></asp:Label></td>
                            <td class="auto-style7">
                                <asp:TextBox ID="TextBox12" CssClass="textboxStyle" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td class="auto-style7">
                                <asp:Label ID="Label13" runat="server" Text="Room No: "></asp:Label></td>
                            <td class="auto-style7">
                                <asp:TextBox ID="TextBox13" CssClass="textboxStyle" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td class="auto-style7">
                                <asp:Label ID="Label14" runat="server" Text="Reservation Date: "></asp:Label></td>
                            <td class="auto-style7">
                                <asp:TextBox ID="TextBox14" CssClass="textboxStyle" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td class="auto-style7">
                                <asp:Label ID="Label15" runat="server" Text="Check-In : "></asp:Label></td>
                            <td class="auto-style7">
                                <asp:TextBox ID="TextBox15" CssClass="textboxStyle" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td class="auto-style7">
                                <asp:Label ID="Label16" runat="server" Text="Check-Out: "></asp:Label></td>
                            <td class="auto-style7">
                                <asp:TextBox ID="TextBox16" CssClass="textboxStyle" runat="server"></asp:TextBox></td>

                        </tr>
                        <tr>
                            <td class="auto-style7">
                                <asp:Label ID="Label17" runat="server" Text="Days: "></asp:Label></td>
                            <td class="auto-style7">
                                <asp:TextBox ID="TextBox17" CssClass="textboxStyle" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td class="auto-style7">
                                <asp:Label ID="Label18" runat="server" Text="Total Cost: "></asp:Label></td>
                            <td class="auto-style7">
                                <asp:TextBox ID="TextBox18" CssClass="textboxStyle" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td class="auto-style7">
                                <asp:Label ID="Label19" runat="server" Text="Payment: "></asp:Label></td>
                            <td class="auto-style7">
                                <asp:TextBox ID="TextBox19" CssClass="textboxStyle" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td class="auto-style7">
                                <asp:Label ID="Label20" runat="server" Text="Due: "></asp:Label></td>
                            <td class="auto-style7">
                                <asp:TextBox ID="TextBox20" CssClass="textboxStyle" runat="server"></asp:TextBox></td>
                        </tr>
                    </table>
                    <br />

                </div>
                <div class="col-md-4"></div>
            </div>
        </div>
    </form>
</body>
</html>

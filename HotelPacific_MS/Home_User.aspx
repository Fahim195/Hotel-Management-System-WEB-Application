<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home_User.aspx.cs" Inherits="HotelPacific_MS.Home_User" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <script src="bootstrap/jquery.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <title>Hotel Pacific</title>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" />
    <link href="StyleSheets/Home_User_SS.css" rel="stylesheet" />

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
                        <a href="AdminLoginPanel.aspx" style="text-decoration: none; background-color: #C9302C; color: white; padding: 6px 12px;display: inline-block; line-height: 1.42857143; border: 1px solid transparent; border-radius: 4px;">Admin Login</a>

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
        <div class="container-fluid">
            <div class="carousel fade-carousel slide" data-ride="carousel" data-interval="3000" id="bs-carousel">
                <div class="carousel-inner">
                    <div class="item slides active">
                        <div class="slide-1"></div>
                        <div class="hero">
                            <hgroup>
                                <h1>5 <i class="fa fa-star" aria-hidden="true"></i>Facilities</h1>
                                <h3>Your Comfort Our Resporsibility</h3>
                            </hgroup>

                        </div>
                    </div>
                    <div class="item slides">
                        <div class="slide-2"></div>
                        <div class="hero">
                            <hgroup>
                                <h1>Amazing Pool side view</h1>
                                <h3>Mindblowing environment for customer freshement </h3>
                            </hgroup>

                        </div>
                    </div>
                    <div class="item slides">
                        <div class="slide-3"></div>
                        <div class="hero">
                            <hgroup>
                                <h1>Comfortable rooms</h1>
                                <h3>excellent & homely decorated rooms of all variation</h3>
                            </hgroup>

                        </div>
                    </div>
                    <div class="item slides">
                        <div class="slide-4"></div>
                        <div class="hero">
                            <hgroup>
                                <h1>Restaurent</h1>
                                <h3>Worldclas restaurent facility</h3>
                            </hgroup>

                        </div>
                    </div>
                    <div class="item slides">
                        <div class="slide-5"></div>
                        <div class="hero">
                            <hgroup>
                                <h1>Food</h1>
                                <h3>Taste & perfect nutrition maintained food </h3>
                            </hgroup>

                        </div>
                    </div>
                    <div class="item slides">
                        <div class="slide-6"></div>
                        <div class="hero">
                            <hgroup>
                                <h1>Inner Decoration</h1>
                                <h3>sound and polution free lobby</h3>
                            </hgroup>

                        </div>
                    </div>
                    <div class="item slides">
                        <div class="slide-7"></div>
                        <div class="hero">
                            <hgroup>
                                <h1>Shuttle coach srvice</h1>
                                <h3>Tourist service</h3>
                            </hgroup>

                        </div>
                    </div>
                    <div class="item slides">
                        <div class="slide-8"></div>
                        <div class="hero">
                            <hgroup>
                                <h1>Transport Facilities</h1>
                                <h3>peersonal tansport facility</h3>
                            </hgroup>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <br />
        <div class="container-fluid" id="ServicesTagSticker">
            <div class="row" id="serviceListBackground">
                <div class="col-md-4" id="serviceList">
                    <div class="container-fluid" id="ServiceListHolder">
                        <h3><i class="fa fa-chevron-right" aria-hidden="true" id="ServiceListHolder_Icon"></i>Residential Service</h3>
                        <h3><i class="fa fa-chevron-right" aria-hidden="true" id="ServiceListHolder_Icon"></i>Trasport Facility</h3>
                        <h3><i class="fa fa-chevron-right" aria-hidden="true" id="ServiceListHolder_Icon"></i>Tour Planner and organizer </h3>
                    </div>
                </div>
                <div class="col-md-4" id="serviceList">
                    <h1>Services</h1>
                    <p style="color: black">that we offer...</p>
                </div>
                <div class="col-md-4" id="serviceList">
                    <div class="container-fluid" id="ServiceListHolder">
                        <h3><i class="fa fa-chevron-right" aria-hidden="true" id="ServiceListHolder_Icon"></i>Five Star Kithen Food</h3>
                        <h3><i class="fa fa-chevron-right" aria-hidden="true" id="ServiceListHolder_Icon"></i>24 X 7 Service</h3>
                        <h3><i class="fa fa-chevron-right" aria-hidden="true" id="ServiceListHolder_Icon"></i>Highly Secured</h3>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer">
            <div class="row" id="footers">
                <div class="col-md-2"></div>
                <div class="col-md-8">
                    <p>Any query please call  <i class="fa fa-phone" aria-hidden="true" id="ServiceListHolder_Icon"></i>+99-012-098756</p>
                </div>
                <div class="col-md-2"></div>
            </div>

        </div>

    </form>
</body>
</html>

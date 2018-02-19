<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reservation.aspx.cs" Inherits="HotelPacific_MS.UI.Reservation" MasterPageFile="~/UI/AdminUse.Master" %>

<asp:Content ID="Reservatin" ContentPlaceHolderID="admminUserMasterPage" runat="server">
    <link href="../StyleSheets/AdminUIstyles/Reservation_SS.css" rel="stylesheet" />

    <div class="container-fluid ">

        <div class="row textboxContainer">
            <div class="col-md-4 textboxSubContainer1">
                <table class="nav-justified">
                    <tr>
                        <td class="auto-style7">
                            <asp:Label ID="Label1" runat="server" Text="Reservation ID: " CssClass="txtLebel"></asp:Label></td>
                        <td class="auto-style7">
                            <asp:TextBox ID="TxtID_Reservation" CssClass="textboxStyle" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="auto-style7">
                            <asp:Label ID="Label2" runat="server" Text="Name: " CssClass="txtLebel"></asp:Label></td>
                        <td class="auto-style7">

                            <asp:TextBox ID="TextBox2" CssClass="textboxStyle" runat="server"></asp:TextBox>

                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7">
                            <asp:Label ID="Label3" runat="server" Text="DoB: " CssClass="txtLebel"></asp:Label></td>
                        <td class="auto-style7">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-calendar" aria-hidden="true"></i></span>
                                <asp:TextBox ID="TextBox3" CssClass="form-control DoB textboxStyle" runat="server"></asp:TextBox>
                            </div>

                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7">
                            <asp:Label ID="Label4" runat="server" Text="Age: " CssClass="txtLebel"></asp:Label></td>
                        <td class="auto-style7">
                            <asp:TextBox ID="TextBox4" CssClass="textboxStyle" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="auto-style7">
                            <asp:Label ID="Label10" runat="server" Text="Sex: " CssClass="txtLebel"></asp:Label></td>
                        <td class="auto-style7">
                            <select id="drpGenderSelection" runat="server" class="textboxStyle" style="width: 176px; font-family: 'Century Gothic'">
                                <option>Select Gender</option>
                                <option>Male</option>
                                <option>Female</option>
                                <option>Others</option>
                            </select></td>
                    </tr>
                    <tr>
                        <td class="auto-style7">
                            <asp:Label ID="Label5" runat="server" Text="Profession: " CssClass="txtLebel"></asp:Label></td>
                        <td class="auto-style7">
                            <asp:TextBox ID="TextBox5" CssClass="textboxStyle" runat="server"></asp:TextBox></td>

                    </tr>
                    <tr>
                        <td class="auto-style7">
                            <asp:Label ID="Label6" runat="server" Text="Profession Address: " CssClass="txtLebel"></asp:Label></td>
                        <td class="auto-style7">
                            <asp:TextBox ID="TextBox6" CssClass="textboxStyle" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="auto-style7">
                            <asp:Label ID="Label7" runat="server" Text="Permanent Address:" CssClass="txtLebel"> </asp:Label></td>
                        <td class="auto-style7">
                            <asp:TextBox ID="TextBox7" CssClass="textboxStyle" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="auto-style7">
                            <asp:Label ID="Label21" runat="server" Text="Present Address:" CssClass="txtLebel"> </asp:Label></td>
                        <td class="auto-style7">
                            <asp:TextBox ID="TextPresentAdd" CssClass="textboxStyle" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="auto-style7">
                            <asp:Label ID="Label8" runat="server" Text="Contact No: " CssClass="txtLebel"></asp:Label></td>
                        <td class="auto-style7">
                            <div class="form-group" style="padding-top: 0px; margin-bottom: 0px;">
                                <div class="input-group" style="padding-top: 0px;">
                                    <span class="input-group-addon" style="font-weight: 400; font-weight: 500">+880-</span>
                                    <asp:TextBox ID="TextBox8" CssClass="textboxStyle form-control" Style="width: 113px;" runat="server"></asp:TextBox>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7">
                            <asp:Label ID="Label9" runat="server" Text="Email: " CssClass="txtLebel"></asp:Label></td>
                        <td class="auto-style7">
                            <asp:TextBox ID="TextBox9" CssClass="textboxStyle" runat="server"></asp:TextBox></td>
                    </tr>
                </table>
                <br />
            </div>
            <div class="col-md-4 textboxSubContainer2">
                <table class="nav-justified">
                    <tr>
                        <td class="auto-style7">
                            <asp:Label ID="Label11" runat="server" Text="NID / Passport: " CssClass="txtLebel"></asp:Label></td>
                        <td class="auto-style7">
                            <asp:TextBox ID="TextBox11" CssClass="textboxStyle" runat="server"></asp:TextBox></td>

                    </tr>
                    <tr>
                        <td class="auto-style7">
                            <asp:Label ID="Label12" runat="server" Text="Room ID: " CssClass="txtLebel"></asp:Label></td>
                        <td class="auto-style7">
                            <asp:TextBox ID="TextBox12" CssClass="textboxStyle" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="auto-style7">
                            <asp:Label ID="Label13" runat="server" Text="Room No: " CssClass="txtLebel"></asp:Label></td>
                        <td class="auto-style7">
                            <asp:TextBox ID="TextBox13" CssClass="textboxStyle" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="auto-style7">
                            <asp:Label ID="Label14" runat="server" Text="Reservation Date: " CssClass="txtLebel"></asp:Label></td>
                        <td class="auto-style7">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-calendar" aria-hidden="true"></i></span>
                                <asp:TextBox ID="TextBox14" CssClass="form-control textboxStyle  ReservationDate" runat="server"></asp:TextBox>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7">
                            <asp:Label ID="Label15" runat="server" Text="Check-In : " CssClass="txtLebel"></asp:Label></td>
                        <td class="auto-style7">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-calendar" aria-hidden="true"></i></span>
                                <asp:TextBox ID="TextBox15" CssClass="form-control textboxStyle CheckInDate" runat="server"></asp:TextBox>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7">
                            <asp:Label ID="Label16" runat="server" Text="Check-Out: " CssClass="txtLebel"></asp:Label></td>
                        <td class="auto-style7">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-calendar" aria-hidden="true"></i></span>
                                <asp:TextBox ID="TextBox16" CssClass="form-control textboxStyle CheckOutDate" runat="server"></asp:TextBox>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7">
                            <asp:Label ID="Label17" runat="server" Text="Days: " CssClass="txtLebel"></asp:Label></td>
                        <td class="auto-style7">
                            <asp:TextBox ID="TextBox17" CssClass="textboxStyle" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="auto-style7">
                            <asp:Label ID="Label18" runat="server" Text="Total Cost: " CssClass="txtLebel"></asp:Label></td>
                        <td class="auto-style7">
                            <asp:TextBox ID="TextBox18" CssClass="textboxStyle" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="auto-style7">
                            <asp:Label ID="Label19" runat="server" Text="Payment: " CssClass="txtLebel"></asp:Label></td>
                        <td class="auto-style7">
                            <asp:TextBox ID="TextBox19" CssClass="textboxStyle" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="auto-style7">
                            <asp:Label ID="Label20" runat="server" Text="Due: " CssClass="txtLebel"></asp:Label></td>
                        <td class="auto-style7">
                            <asp:TextBox ID="TextBox20" CssClass="textboxStyle" runat="server"></asp:TextBox></td>
                    </tr>
                </table>
                <br />

            </div>
            <div class="col-md-2 ">
                <div class="gvContainer">
                    <asp:GridView ID="GridView1" runat="server" CssClass="roomGridInfo" AutoGenerateColumns="False" DataKeyNames="Room_Id" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField DataField="Room_Id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="Room_Id" />
                            <asp:BoundField DataField="RoomNo" HeaderText="Room No" SortExpression="RoomNo" />
                            <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HMS2ConnectionString %>" SelectCommand="SELECT [Room_Id], [RoomNo], [Status] FROM [ROOM]"></asp:SqlDataSource>
                </div>
            </div>
            <div class="col-md-2">
                <div class="gvContainer2">
                    <asp:GridView ID="GridView2" runat="server" CssClass="roomGridInfo"></asp:GridView>
                </div>

            </div>
        </div>
    </div>

    <div class="container-fluid btnContainer">
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-2">
                <asp:LinkButton ID="btnSave_reservation" Style=""
                    runat="server" CssClass="btnAction" OnClick="btnSave_reservation_Click"><i class="fa fa-cloud" style="color: white;"></i> Save</asp:LinkButton>
            </div>
            <div class="col-md-2">
                <asp:LinkButton ID="btnUpdate_Rservation" CssClass="btnAction" runat="server" OnClick="btnUpdate_Rservation_Click" ><i class="fa fa-recycle" style="color: white;"></i> Update</asp:LinkButton>
            </div>
            <div class="col-md-2">
                <asp:LinkButton ID="btnCancel_Reservation" CssClass="btnAction" runat="server" OnClick="btnCancel_Reservation_Click"><i class="fa fa-times" style="color: white;"></i> Cancel</asp:LinkButton>
            </div>
            <div class="col-md-2">
                <button id="btnReservation_Clear" class="clearbtnAction" onclick="return false"><i class="fa fa-eraser" style="color: white;"></i>Clear</button>
            </div>
            <div class="col-md-2"></div>

        </div>
    </div>
    <script src="../Scripts/Reservation_JS.js"></script>
</asp:Content>

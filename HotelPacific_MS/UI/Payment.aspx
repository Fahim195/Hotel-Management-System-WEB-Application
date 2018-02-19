<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="HotelPacific_MS.UI.Payment" MasterPageFile="~/UI/AdminUse.Master" %>

<asp:Content ID="Payment" ContentPlaceHolderID="admminUserMasterPage" runat="server">
    <link href="../StyleSheets/AdminUIstyles/Payment_SS.css" rel="stylesheet" />
    <div class="container-fluid textboxContainer" >
        <div class="row textboxSuBContainer">
            <div class="col-md-3">
                <table class="nav-justified">
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text="Reservation ID: " CssClass="txtLebel"></asp:Label></td>
                        <td>
                            <asp:TextBox ID="TxtID_payment" CssClass="textboxStyle" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="auto-style7">
                            <asp:Label ID="Label2" runat="server" Text="Name: " CssClass="txtLebel"></asp:Label>
                        </td>
                        <td class="auto-style7">
                            <asp:TextBox ID="txtName_payment" CssClass="textboxStyle" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7">
                            <asp:Label ID="Label3" runat="server" Text="DoB: " CssClass="txtLebel"></asp:Label></td>
                        <td class="auto-style7">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-calendar" aria-hidden="true"></i></span>
                                <asp:TextBox ID="txtDoB_payment" CssClass="form-control DoB textboxStyle" runat="server"></asp:TextBox>
                            </div>

                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7">
                            <asp:Label ID="Label4" runat="server" Text="Age: " CssClass="txtLebel"></asp:Label>
                        </td>
                        <td class="auto-style7">
                            <asp:TextBox ID="txtAge_payment" CssClass="textboxStyle" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7">
                            <asp:Label ID="Label10" runat="server" Text="Sex: " CssClass="txtLebel"></asp:Label></td>
                        <td class="auto-style7">
                            <select id="drpGenderSelection_payment" runat="server" class="textboxStyle" style="width: 176px; font-family: 'Century Gothic'">
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
                            <asp:TextBox ID="txtProfession_payment" CssClass="textboxStyle" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="col-md-3">
                <table class="nav-justified">
                    <tr>
                        <td class="auto-style7">
                            <asp:Label ID="Label6" runat="server" Text="Profession Address: " CssClass="txtLebel"></asp:Label></td>
                        <td class="auto-style7">
                            <asp:TextBox ID="txtProfessionAddress_payment" CssClass="textboxStyle" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7">
                            <asp:Label ID="Label7" runat="server" Text="Permanent Address:" CssClass="txtLebel"> </asp:Label></td>
                        <td class="auto-style7">
                            <asp:TextBox ID="txtPermanentAddress_payment" CssClass="textboxStyle" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7">
                            <asp:Label ID="Label21" runat="server" Text="Present Address:" CssClass="txtLebel"> </asp:Label></td>
                        <td class="auto-style7">
                            <asp:TextBox ID="txtPresentAddress_payment" CssClass="textboxStyle" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="auto-style7">
                            <asp:Label ID="Label8" runat="server" Text="Contact No: " CssClass="txtLebel"></asp:Label></td>
                        <td class="auto-style7">
                            <div class="form-group" style="padding-top: 0px; margin-bottom: 0px;">
                                <div class="input-group" style="padding-top: 0px;">
                                    <span class="input-group-addon" style="font-weight: 400; font-weight: 500">+880-</span>
                                    <asp:TextBox ID="contactNo_payment" CssClass="textboxStyle form-control" Style="width: 113px;" runat="server"></asp:TextBox>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7">
                            <asp:Label ID="Label9" runat="server" Text="Email: " CssClass="txtLebel"></asp:Label></td>
                        <td class="auto-style7">
                            <asp:TextBox ID="txtEmail_payment" CssClass="textboxStyle" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7">
                            <asp:Label ID="Label11" runat="server" Text="NID / Passport: " CssClass="txtLebel"></asp:Label></td>
                        <td class="auto-style7">
                            <asp:TextBox ID="txtNID_payment" CssClass="textboxStyle" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="col-md-3">
                <table>
                    
                    <tr>
                        <td class="auto-style7">
                            <asp:Label ID="Label12" runat="server" Text="Room ID: " CssClass="txtLebel"></asp:Label></td>
                        <td class="auto-style7">
                            <asp:TextBox ID="txtRoomId_payment" CssClass="textboxStyle" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7">
                            <asp:Label ID="Label13" runat="server" Text="Room No: " CssClass="txtLebel"></asp:Label></td>
                        <td class="auto-style7">
                            <asp:TextBox ID="txtRoomNO_payment" CssClass="textboxStyle" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="auto-style7">
                            <asp:Label ID="Label14" runat="server" Text="Reservation Date: " CssClass="txtLebel"></asp:Label></td>
                        <td class="auto-style7">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-calendar" aria-hidden="true"></i></span>
                                <asp:TextBox ID="txtReservationDate_payment" CssClass="form-control textboxStyle  ReservationDate" runat="server"></asp:TextBox>
                            </div>
                        </td>
                    </tr>
                     <tr>
                        <td class="auto-style7">
                            <asp:Label ID="Label15" runat="server" Text="Check-In : " CssClass="txtLebel"></asp:Label></td>
                        <td class="auto-style7">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-calendar" aria-hidden="true"></i></span>
                                <asp:TextBox ID="txtCheckInDate_payment" CssClass="form-control textboxStyle CheckInDate" runat="server"></asp:TextBox>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7">
                            <asp:Label ID="Label16" runat="server" Text="Check-Out: " CssClass="txtLebel"></asp:Label></td>
                        <td class="auto-style7">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-calendar" aria-hidden="true"></i></span>
                                <asp:TextBox ID="txtCheckOutDate_payment" CssClass="form-control textboxStyle CheckOutDate" runat="server"></asp:TextBox>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7">
                            <asp:Label ID="Label17" runat="server" Text="Days: " CssClass="txtLebel"></asp:Label></td>
                        <td class="auto-style7">
                            <asp:TextBox ID="txtNoOfDays_payment" CssClass="textboxStyle" runat="server"></asp:TextBox></td>
                    </tr>
                </table>
            </div>
            <div class="col-md-3">
                <table class="costTextBoxesContainer">                    
                    <tr>
                        <td class="auto-style7">
                            <asp:Label ID="Label18" runat="server" Text="Total Cost: " CssClass="txtLebel"></asp:Label></td>
                        <td class="auto-style7">
                            <asp:TextBox ID="txtTotalCost_payment" CssClass="textboxStyle costTextBoxes" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="auto-style7">
                            <asp:Label ID="Label19" runat="server" Text="Payment: " CssClass="txtLebel"></asp:Label></td>
                        <td class="auto-style7">
                            <asp:TextBox ID="txtPayment_payment" CssClass="textboxStyle costTextBoxes" runat="server"></asp:TextBox></td>
                    </tr>
                    
                    <tr>
                        <td class="auto-style7">
                            <asp:Label ID="Label22" runat="server" Text="Discount: " CssClass="txtLebel"></asp:Label></td>
                        <td class="auto-style7">
                            <asp:TextBox ID="txtDiscount_payment" CssClass="textboxStyle costTextBoxes" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="auto-style7">
                            <asp:Label ID="Label20" runat="server" Text="Due: " CssClass="txtLebel"></asp:Label></td>
                        <td class="auto-style7">
                            <asp:TextBox ID="txtDue_payment" CssClass="textboxStyle costTextBoxes" runat="server"></asp:TextBox></td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
    <div class="container-fluid btnContainer">
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-2">
                <asp:LinkButton ID="btnSave_payment" Style=""
                    runat="server" CssClass="btnAction" OnClick="btnSave_Payment_Click" ><i class="fa fa-cloud" style="color: white;"></i> Save</asp:LinkButton>
            </div>
            <div class="col-md-2">
                <asp:LinkButton ID="btnUpdate_paymentt" CssClass="btnAction" runat="server" OnClick="btnUpdate_Payment_Click"><i class="fa fa-recycle" style="color: white;"></i> Update</asp:LinkButton>
            </div>
            <div class="col-md-2">
                <asp:LinkButton ID="btnCancel_payment" CssClass="btnAction" runat="server" OnClick="btnCancel_Payment_Click" ><i class="fa fa-times" style="color: white;"></i> Cancel</asp:LinkButton>
            </div>
            <div class="col-md-2">
                <button id="btnClear_payment" class="clearbtnAction" onclick="return false"><i class="fa fa-eraser" style="color: white;"></i>Clear</button>
            </div>
            <div class="col-md-2"></div>
        </div>
    </div>
    <script src="../Scripts/Payment_JS.js"></script>
</asp:Content>
<%@ Page Title="" Language="C#" MasterPageFile="~/Student/MasterPage.master" AutoEventWireup="true" CodeFile="Saccount.aspx.cs" Inherits="Student_Saccount" EnableSessionState="True" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

<link rel="stylesheet" href="../Styles/demo.css">
<link rel="stylesheet" href="../Styles/StyleSheet.css" />

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-4 mt-5">
                        <h3>View Account Details</h3>
                        <br />
                        
                        <asp:Table ID="Table1" runat="server" CssClass="table table-striped">
                            <asp:TableRow>
                                <asp:TableCell>Roll no.</asp:TableCell>
                                <asp:TableCell><asp:Label ID="lbl_id" runat="server" Text="Label"></asp:Label>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell>Name:</asp:TableCell>
                                <asp:TableCell><asp:Label ID="lbl_name" runat="server" Text="Label"></asp:Label></asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell>Department:</asp:TableCell>
                                <asp:TableCell><asp:Label ID="lbl_dept" runat="server" Text="Label"></asp:Label></asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell>Username:</asp:TableCell>
                                <asp:TableCell><asp:Label ID="lbl_email" runat="server" Text="Label"></asp:Label></asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell>Classname:</asp:TableCell>
                               <asp:TableCell><asp:Label ID="lbl_class" runat="server" Text="Label"></asp:Label></asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell>Phone no:</asp:TableCell>
                                <asp:TableCell><asp:Label ID="lbl_phn" runat="server" Text="Label"></asp:Label></asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell>Address</asp:TableCell>
                                <asp:TableCell><asp:Label ID="lbl_add" runat="server" Text="Label"></asp:Label></asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                    </div>
                </div>
            </div>
        </center>
</asp:Content>


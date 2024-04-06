<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher/MasterPage.master" AutoEventWireup="true" CodeFile="account.aspx.cs" Inherits="Teacher_account" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="container">
<center>
            <div class="row justify-content-center">
                <div class="col-md-4 mt-3">
                    <h3>Profile</h3>
                   
                        <div class="row mb-4" style="padding:10px; margin-top:3em;">
                          <asp:Table ID="Table1" runat="server" CssClass="table table-striped">
                           
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
                                <asp:TableCell>Phone no:</asp:TableCell>
                                <asp:TableCell><asp:Label ID="lbl_phn" runat="server" Text="Label"></asp:Label></asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                    </div>
                   
                </div>
            </div>
        </div>
</center>
</asp:Content>


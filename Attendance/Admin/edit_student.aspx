<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="edit_student.aspx.cs" Inherits="Admin_edit_student" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<center>
<h1>Edit student profile</h1>
<div class="container">
    <div class="row justify-content-center">
        <asp:Panel ID="formPanel" runat="server" CssClass="form col-md-6" >
            <div class="mb-3 row">
                        
                <asp:Label ID="Label2"  CssClass="col-lg-4 col-form-label" runat="server" Text="Name"></asp:Label>
                <div class="col-sm-7">
                    <asp:TextBox ID="name" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>
           
            <div class="mb-3 row">
                        
                <asp:Label ID="Label3"  CssClass="col-lg-4 col-form-label" runat="server" Text="username"></asp:Label>
                <div class="col-sm-7">
                 <asp:TextBox ID="username" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="mb-3 row">
                        
                <asp:Label ID="Label4"  CssClass="col-lg-4 col-form-label" runat="server" Text="Password"></asp:Label>
                <div class="col-sm-7">
                   <asp:TextBox ID="pass" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="mb-3 row">
                        
                <asp:Label ID="Label5"  CssClass="col-lg-4 col-form-label" runat="server" Text="Classname"></asp:Label>
                <div class="col-sm-7">
                    <asp:TextBox ID="classnm" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="mb-3 row">
                        
                <asp:Label ID="Label6"  CssClass="col-lg-4 col-form-label" runat="server" Text="Department"></asp:Label>
                <div class="col-sm-7">
                    <asp:TextBox ID="dept" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="mb-3 row">
                        
                <asp:Label ID="Label7"  CssClass="col-lg-4 col-form-label" runat="server" Text="Roll no"></asp:Label>
                <div class="col-sm-7">
                    <asp:TextBox ID="rollno" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="mb-3 row">
                        
                <asp:Label ID="Label8"  CssClass="col-lg-4 col-form-label" runat="server" Text="Phone no."></asp:Label>
                <div class="col-sm-7">
                    <asp:TextBox ID="phone" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="mb-3 row">
                        
                <asp:Label ID="Label9"  CssClass="col-lg-4 col-form-label" runat="server" Text="Address"></asp:Label>
                <div class="col-sm-7">
                    <asp:TextBox ID="address" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>

            <!-- Repeat similar structure for other form fields -->

                   
                <asp:Button ID="edit_student" class="btn btn-primary col-md-4 col-sm-8"
                    runat="server" Text="Save" onclick="edit_student_Click" />
        </asp:Panel>
    </div>
</div>
                                                                    
</center>


</asp:Content>


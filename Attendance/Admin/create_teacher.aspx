<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="create_teacher.aspx.cs" Inherits="Admin_create_teacher" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<center>


 <h1>Create Teacher profile</h1>
        <div class="container">
            <div class="row justify-content-center">
                <asp:Panel ID="formPanel" runat="server" CssClass="form col-md-6" >
                    <div class="mb-3 row">
                        
                        <asp:Label ID="Label2"  CssClass="col-lg-4 col-form-label" runat="server" 
                            Text="Name"  Font-Size="Large"></asp:Label>
                        
                             
                            
                            <div class="col-sm-7">
                            <asp:TextBox ID="name" CssClass="form-control" runat="server" placeholder="Enter name"></asp:TextBox>
                           
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="name" ErrorMessage="Please Enter Name" 
                                Font-Size="Medium" ForeColor="Red" Font-Bold="True">Please Enter Name</asp:RequiredFieldValidator>
                        </div>
                        
                    </div>
                    
                    <div class="mb-3 row">
                        
                        <asp:Label ID="Label3"  CssClass="col-lg-4 col-form-label" runat="server" 
                            Text="Username" Font-Size="Large"></asp:Label>
                        <div class="col-sm-7">
                            
                            
                            <asp:TextBox ID="username" CssClass="form-control" runat="server" placeholder="Enter username"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="username" ErrorMessage="Please Enter Username" 
                                Font-Bold="True" Font-Size="Medium" ForeColor="Red">Please Enter Username</asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="mb-3 row">
                        
                        <asp:Label ID="Label4"  CssClass="col-lg-4 col-form-label" runat="server" 
                            Text="Password"  Font-Size="Large" ></asp:Label>
                        <div class="col-sm-7">
                            
                            
                            <asp:TextBox ID="pass" CssClass="form-control" runat="server" 
                                TextMode="Password" placeholder="Enter password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="pass" ErrorMessage="Please Enter Password" Font-Bold="True" 
                                Font-Size="Medium" ForeColor="Red">Please Enter Password</asp:RequiredFieldValidator>
                        </div>
                    </div>
                  
                    <div class="mb-3 row">
                        
                        <asp:Label ID="Label6"  CssClass="col-lg-4 col-form-label" runat="server" 
                            Text="Department"  Font-Size="Large"></asp:Label>
                        <div class="col-sm-7">
                            
                            
                            <asp:DropDownList ID="dept" runat="server" 
                                DataSourceID="SqlDataSource1" DataTextField="dname" 
                                CssClass="form-control" DataValueField="dname">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                SelectCommand="SELECT [dname] FROM [Department]"></asp:SqlDataSource>
                                <br />
                        </div>
                    </div>
                    <div class="mb-3 row">
                        
                        <asp:Label ID="Label7"  CssClass="col-lg-4 col-form-label" runat="server" 
                            Text="Join Date"  Font-Size="Large"></asp:Label>
                        <div class="col-sm-7">
                            
                            <asp:TextBox ID="joinDate" CssClass="form-control" runat="server" type="date"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ControlToValidate="joinDate" ErrorMessage="Please Enter Joindate" 
                                Font-Bold="True" Font-Size="Medium" ForeColor="Red">Please Enter Joindate</asp:RequiredFieldValidator>

                            
                        </div>
                    </div>
                    <div class="mb-3 row">
                        
                        <asp:Label ID="Label8"  CssClass="col-lg-4 col-form-label" runat="server" 
                            Text="Phone no."  Font-Size="Large"></asp:Label>
                        <div class="col-sm-7">
                            
                            
                            <asp:TextBox ID="phone" CssClass="form-control" runat="server" placeholder="Enter phone no."></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                ControlToValidate="phone" ErrorMessage="Please Enter Phone No." 
                                Font-Bold="True" Font-Size="Medium" ForeColor="Red">Please Enter Phone No.</asp:RequiredFieldValidator>
                            <br />
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                ControlToValidate="phone" ErrorMessage="Enter Correct Phone no." 
                                Font-Bold="True" Font-Size="Medium" ForeColor="Red" 
                                ValidationExpression="^[6-9]\d{9}$">Enter Correct Phone no.</asp:RegularExpressionValidator>
                        </div>
                    </div>
                        <asp:Button CssClass="btn btn-primary col-md-4 col-sm-8" ID="add_teacher" 
                            runat="server" Text="Create" onclick="add_teacher_Click" />
                    
                    <br />
                    <br />
                    <asp:Label ID="msg" runat="server"></asp:Label>
                    
                </asp:Panel>
            </div>
        </div>
                                                                    
</center>

</asp:Content>


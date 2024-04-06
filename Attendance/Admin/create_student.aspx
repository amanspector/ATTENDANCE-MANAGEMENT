<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="create_student.aspx.cs" Inherits="Admin_create_student" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<center>


 <h1>Create student profile</h1>
        <div class="container">
            <div class="row justify-content-center">
                <asp:Panel ID="formPanel" runat="server" CssClass="form col-md-6" >
                    <div class="mb-3 row">
                        
                        <asp:Label ID="Label2"  CssClass="col-lg-4 col-form-label" runat="server" 
                            Text="Name" Font-Size="Large"></asp:Label>
                        <div class="col-sm-7">
                            <asp:TextBox ID="name" CssClass="form-control" runat="server" placeholder="Enter name"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="name" ErrorMessage="Please Enter Name" Font-Bold="True" 
                                Font-Size="Medium" ForeColor="Red">Please Enter Name</asp:RequiredFieldValidator>
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
                            Text="Password" Font-Size="Large"></asp:Label>
                        <div class="col-sm-7">
                            
                            
                            <asp:TextBox ID="pass" CssClass="form-control" runat="server" placeholder="Enter Password"
                                TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="pass" ErrorMessage="Please Enter Password" Font-Bold="True" 
                                Font-Size="Medium" ForeColor="Red">Please Enter Password</asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="mb-3 row">
                        
                        <asp:Label ID="Label6"  CssClass="col-lg-4 col-form-label" runat="server" 
                            Text="Department" Font-Size="Large"></asp:Label>
                        <div class="col-sm-7">
                            
                            
                            <asp:DropDownList ID="department" runat="server" DataSourceID="SqlDataSource1" CssClass="form-control"
                                DataTextField="dname" DataValueField="dname" AutoPostBack="True">
                            </asp:DropDownList>
                            <br />
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                SelectCommand="SELECT [dname] FROM [Department]"></asp:SqlDataSource>
                        </div>
                    </div>
                    <div class="mb-3 row">
                        
                        <asp:Label ID="Label5"  CssClass="col-lg-4 col-form-label" runat="server" 
                            Text="Classname" Font-Size="Large"></asp:Label>
                        <div class="col-sm-7">
                            
                            
                            <asp:DropDownList ID="classname" runat="server" CssClass="form-control" DataSourceID="classBYdname" 
                                DataTextField="cname" DataValueField="cname">
                            </asp:DropDownList>
                            <br />
                            <asp:SqlDataSource ID="classBYdname" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                SelectCommand="SELECT [cname] FROM [class] WHERE ([dname] = @dname)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="department" Name="dname" 
                                        PropertyName="SelectedValue" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </div>
                    </div>
                    
                    <div class="mb-3 row">
                        
                        <asp:Label ID="Label7"  CssClass="col-lg-4 col-form-label" runat="server" 
                            Text="Roll no" Font-Size="Large"></asp:Label>
                        <div class="col-sm-7">
                            
                            
                            <asp:TextBox ID="rollno" CssClass="form-control" runat="server" placeholder="Enter roll no "></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ControlToValidate="rollno" ErrorMessage="Please Enter Roll no" Font-Bold="True" 
                                Font-Size="Medium" ForeColor="Red">Please Enter Roll no</asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="mb-3 row">
                        
                        <asp:Label ID="Label8"  CssClass="col-lg-4 col-form-label" runat="server" 
                            Text="Phone no." Font-Size="Large" ></asp:Label>
                        <div class="col-sm-7">
                            
                            
                            <asp:TextBox ID="phone" CssClass="form-control" runat="server" placeholder="Enter phone no"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                ControlToValidate="phone" ErrorMessage="Please Enter Phone No." 
                                Font-Bold="True" Font-Size="Medium" ForeColor="Red">Please Enter Phone No.</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                ControlToValidate="phone" ErrorMessage="Enter Correct Phone no." 
                                Font-Bold="True" Font-Size="Medium" ForeColor="Red" 
                                ValidationExpression="^[6-9]\d{9}$">Enter Correct Phone no.</asp:RegularExpressionValidator>
                        </div>
                    </div>
                    <div class="mb-3 row">
                        
                        <asp:Label ID="Label9"  CssClass="col-lg-4 col-form-label" runat="server" 
                            Text="Address" Font-Size="Large" ></asp:Label>
                        <div class="col-sm-7">
                            
                            
                            <asp:TextBox ID="address" CssClass="form-control" runat="server" 
                                placeholder="Enter address" TextMode="MultiLine"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                ControlToValidate="address" ErrorMessage="Please Enter Address" 
                                Font-Bold="True" Font-Size="Medium" ForeColor="Red">Please Enter Address</asp:RequiredFieldValidator>
                            <br />
                        </div>
                    </div>

                    <!-- Repeat similar structure for other form fields -->

                   
                        <asp:Button CssClass="btn btn-primary col-md-4 col-sm-8" ID="add_student" 
                            runat="server" Text="Create" 
                            OnClick="add_student_Click" />
                    
                    <br />
                    <br />
                    <asp:Label ID="msg" runat="server"></asp:Label>
                    
                </asp:Panel>
            </div>
        </div>
                                                                    
</center>
</asp:Content>


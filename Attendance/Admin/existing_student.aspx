<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="existing_student.aspx.cs" Inherits="Admin_existing_student" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
<div class="container">
    <div class="row justify-content-center">
       <div class="mb-4 mt-3">
            <h3>Existing Student List</h3>
            <div class="row mb-4" style="padding:5px; margin-top:3em;">
                <asp:GridView ID="ShowStudent" runat="server" 
                    CssClass="table table-striped table-hover" AutoGenerateColumns="False" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged">
                    <Columns>
                        <asp:BoundField DataField="rollno" HeaderText="Roll No." />
                        <asp:BoundField DataField="sname" HeaderText="Name" />
                        <asp:BoundField DataField="username" HeaderText="Username" />
                        <asp:BoundField DataField="dept" HeaderText="Department" />
                        <asp:BoundField DataField="class" HeaderText="Class" />
                        
                        <asp:BoundField DataField="phone" HeaderText="Phone No." />
                        <asp:BoundField DataField="address" HeaderText="Address" />
                        
                        <asp:TemplateField HeaderText="Actions">
                            <ItemTemplate>
                                <asp:HyperLink ID="EditLink" runat="server" CssClass="btn btn-primary btn-sm" Text="Edit" NavigateUrl='<%# "edit_student.aspx?sid=" + Eval("sid") %>'></asp:HyperLink>
                                
                                <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-primary btn-sm" Text="Delete" 
                                    NavigateUrl='<%# "delete_student.aspx?sid=" + Eval("sid") + "&sname=" + Server.UrlEncode(Eval("sname").ToString()) + "&class=" + Server.UrlEncode(Eval("class").ToString()) %>'>
                                </asp:HyperLink>

                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>    
        </div>
    </div>
</div>
</center>
</asp:Content>


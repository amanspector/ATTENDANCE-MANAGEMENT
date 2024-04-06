<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="existing_teacher.aspx.cs" Inherits="Admin_existing_teacher" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<center>
<div class="container">
            <div class="row justify-content-center">
                <div class="mb-4 mt-3">
                    <h3>Existing Teacher List</h3>
                    <div class="row mb-4" style="padding:5px; margin-top:3em;">
                        <asp:GridView ID="GridViewTeachers" runat="server" CssClass="table table-striped table-hover" AutoGenerateColumns="False">
                            <Columns>
                                <asp:BoundField DataField="tname" HeaderText="Teacher's Name" />
                                <asp:BoundField DataField="username" HeaderText="Username" />
                                <asp:BoundField DataField="dept" HeaderText="Department" />
                                <asp:BoundField DataField="phone" HeaderText="Phone No." />
                                <asp:BoundField DataField="joindate" HeaderText="Join Date" DataFormatString="{0:dd/MM/yyyy}"/>
                                <asp:TemplateField HeaderText="Actions">
                                    <ItemTemplate>
                                        <asp:HyperLink ID="EditLink" runat="server" CssClass="btn btn-primary btn-sm" Text="Edit" NavigateUrl='<%# "edit_teacher.aspx?tid=" + Eval("tid") %>'></asp:HyperLink>
                                        <asp:HyperLink ID="DeleteLink" runat="server" CssClass="btn btn-primary btn-sm" Text="Delete" NavigateUrl='<%# "delete_teacher.aspx?tid=" + Eval("tid") %>'></asp:HyperLink>
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


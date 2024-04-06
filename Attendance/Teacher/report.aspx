<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher/MasterPage.master" AutoEventWireup="true" CodeFile="report.aspx.cs" Inherits="Teacher_report" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">



</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
        <div class="container">
            <div class="row justify-content-center">
                <div class="md-4 mt-3">
                    <h3>Student Report</h3>
                    <div class="col-sm-2">
                        <asp:DropDownList ID="seleClass" runat="server" CssClass="form-control"
                            
                            DataSourceID="SqlDataSource1" DataTextField="cname" DataValueField="cname">
                        </asp:DropDownList>
                        
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT [cname] FROM [class] WHERE ([dname] = @dname)">
                            <SelectParameters>
                                <asp:SessionParameter Name="dname" SessionField="dept" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        
                        <br />
                        <asp:Button ID="OKgo" runat="server" CssClass="btn btn-primary btn" Text="OK" 
                            onclick="OKgo_Click" />
                    </div>
                    <br/>
                    <div class="row mb-4" style="padding:10px; margin-top:-1em;">
                        <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped table-hover" AutoGenerateColumns="False">
                            <Columns>
                                <asp:BoundField DataField="rollno" HeaderText="Roll No" />
                                <asp:BoundField DataField="sname" HeaderText="Name" />
                                <asp:BoundField DataField="dept" HeaderText="Department" />
                                <asp:BoundField DataField="present" HeaderText="Present Days" />
                                <asp:BoundField DataField="absent" HeaderText="Absent Days" />
                                <asp:BoundField DataField="total" HeaderText="Total Days" />
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </div>
        </div>
    </center>
</asp:Content>


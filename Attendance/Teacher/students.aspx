<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher/MasterPage.master" AutoEventWireup="true" CodeFile="students.aspx.cs" Inherits="Teacher_students" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
<div class="container">
    <div class="row justify-content-center">
       <div class="mb-4 mt-3">
            <h3>Student List</h3>
            
            <div class="col-sm-2">
                <asp:DropDownList ID="classSele" CssClass="form-control" runat="server" 
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
                <asp:Button ID="OKgo" CssClass="btn btn-primary btn" runat="server" Text="OK" 
                    onclick="OKgo_Click" />
            
                <br />
            <br />
                <asp:TextBox ID="getrollno" runat="server" CssClass="form-control" placeholder="Enter Roll No."></asp:TextBox>
            
                <br />
            
                <asp:Button ID="searchBtn" runat="server" Text="Search" 
                    CssClass="btn btn-primary btn" onclick="searchBtn_Click"/>
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="cancelBtn" runat="server" Text="Cancel" 
                    CssClass="btn btn-primary btn" onclick="cancelBtn_Click"/>
               </div>
            
            <div class="row mb-4" style="padding:5px; margin-top:3em;">
            <asp:GridView ID="StudentList" runat="server" 
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
                    </Columns>
                </asp:GridView>
           
                <br />
                <asp:Label ID="msg" runat="server" Font-Bold="True" Font-Size="Large" 
                    ForeColor="Red"></asp:Label>
           
            </div>    
        </div>
    </div>
</div>
</center>
</asp:Content>
  
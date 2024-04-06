<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher/MasterPage.master" AutoEventWireup="true" CodeFile="attendance.aspx.cs" Inherits="Teacher_attendance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
     <div class="container">
             
                <br />
            <h3 CssClass="mb-4 mt-3">
            <asp:Label ID="DateLabel" runat="server" CssClass="mb-4 mt-3" Text=''></asp:Label>



            </h3>
            <div class="col-sm-2">
                 <asp:DropDownList ID="classsele" runat="server" CssClass="form-control" DataSourceID="classBYdname" 
                     DataTextField="cname" DataValueField="cname">
                 </asp:DropDownList>
                 <asp:SqlDataSource ID="classBYdname" runat="server" 
                     ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                     SelectCommand="SELECT [cname] FROM [class] WHERE ([dname] = @dname)">
                     <SelectParameters>
                         <asp:SessionParameter Name="dname" SessionField="dept" Type="String" />
                     </SelectParameters>
                 </asp:SqlDataSource>
                 <br />
                 <asp:Button ID="OKgo" runat="server" CssClass="btn btn-primary btn" onclick="OKgo_Click" Text="OK" />
               </div>
            <br />
            
            

            <div class="row mb-4" style="padding:10px; margin-top:-1em;">
            <asp:GridView ID="StudentGridView" runat="server" CssClass="table table-striped table-hover" AutoGenerateColumns="false">
                <Columns>
                    <asp:BoundField DataField="rollno" HeaderText="Roll no" />
                    <asp:BoundField DataField="sname" HeaderText="Name" />
                    <asp:BoundField DataField="dept" HeaderText="Department" />
                    <asp:BoundField DataField="class" HeaderText="Class" />
                    <asp:TemplateField HeaderText="Status">
                        <ItemTemplate>
                            <asp:RadioButtonList ID="StatusRadioButtonList" runat="server" RepeatDirection="Horizontal" ValidationGroup="Attendance">
                                <asp:ListItem Text="Present" Value="1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</asp:ListItem>
                                <asp:ListItem Text="Absent" Value="0"></asp:ListItem>
                            </asp:RadioButtonList>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            </div>
              
                
     </div>
            <asp:Button ID="SaveButton" runat="server" Text="Save" 
         CssClass="btn btn-primary" OnClick="SaveButton_Click" 
         ValidationGroup="Attendance" Visible="False" />
    
   
</center>
</asp:Content>


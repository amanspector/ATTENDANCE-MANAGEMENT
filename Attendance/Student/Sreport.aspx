<%@ Page Title="" Language="C#" MasterPageFile="~/Student/MasterPage.master" AutoEventWireup="true" CodeFile="Sreport.aspx.cs" Inherits="Student_Sreport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

<link rel="stylesheet" href="../Styles/demo.css">
<link rel="stylesheet" href="../Styles/StyleSheet.css" />

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <center>
            <div class="container">
             <div class="row justify-content-center">
                <div class="col-md-4 mt-5">
                    <h3>My Report</h3>
                    
                    <br />
                    
                    <div class="row mb-4" style="padding:10px; margin-top:-1em;">
                        <asp:GridView ID="showReport" runat="server" CssClass="table table-striped table-hover" AutoGenerateColumns="False">
                            <Columns>
                                <asp:BoundField DataField="date" HeaderText="Date" DataFormatString="{0:dd/MM/yyyy}" />
                                <asp:BoundField DataField="status" HeaderText="Status" />
                            </Columns>
                        </asp:GridView>
                    </div>
                        <asp:Label ID="msg" runat="server" Font-Bold="True" Font-Size="X-Large" 
                            ForeColor="Red"></asp:Label>
                        <br />
               
                </div>
                 </div>
            </div>
        </center>
</asp:Content>
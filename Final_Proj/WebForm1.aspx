<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Final_Proj.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>FORM</title>
    <link rel ="stylesheet" href="StyleSheet1.css" />
    <style type="text/css">
        .auto-style1 {
            width: 131%;
        }
        .auto-style3 {
            height: 63px;
            text-align: center;
            color: #009999;
        }
        .auto-style4 {
            width: 368px;
            height: 23px;
            text-align: left;
        }
        .auto-style5 {
            height: 23px;
        }
        .auto-style6 {
            margin-left: 47px;
            color: #FFFFFF;
        }
        .auto-style8 {
            height: 26px;
        }
        .auto-style11 {
            height: 37px;
            width: 1339px;
        }
        .auto-style13 {
            width: 368px;
        }
        .auto-style14 {
            height: 26px;
            width: 368px;
        }
        .auto-style15 {
            text-align: center;
            width: 1339px;
        }
        .auto-style16 {
            font-size: xx-large;
            color: #006666;
        }
        .auto-style17 {
            text-align: left;
        }
        
        .auto-style18 {
            width: 1058px;
            height: 738px;
        }
        
        .auto-style19 {
            width: 95%;
            margin-right:11px;
        }
        
        .auto-style20 {
            width: 368px;
            height: 43px;
        }
        .auto-style21 {
            height: 43px;
        }
        
        .auto-style23 {
            color: #006666;
        }
        .auto-style24 {
            width: 1339px;
        }
        .auto-style25 {
            background-color: white;
            box-shadow: 0 .6em .3em -.3em lightgray;
            width: 709px;
            height: 374px;
        }
        
    </style>
</head>
<body>
    
    <div class="bigBox">
    <form id="form1" runat="server" class="auto-style18">
        <section class="auto-style25">
        <table class="auto-style1">
            <tr>
                <td class="auto-style3" colspan="2">
                    <h1 class="auto-style16"><strong><em>STUDENT INFORMATION</em></strong></h1>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="L1" runat="server" CssClass="auto-style23" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" Text="ID"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtid" runat="server" Width="180px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:Label ID="L2" runat="server" CssClass="auto-style23" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" Text="STUDENT NAME"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtname" runat="server" Width="180px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:Label ID="L3" runat="server" CssClass="auto-style23" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" Text="STUDENT ID"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtsid" runat="server" Width="180px" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:Label ID="L4" runat="server" CssClass="auto-style23" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" Text="COURSE"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtco" runat="server" Width="180px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">
                    <asp:Label ID="L5" runat="server" CssClass="auto-style23" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" Text="SECTION"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtsec" runat="server" Width="180px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:Label ID="L6" runat="server" CssClass="auto-style23" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" Text="SUBJECT"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtsub" runat="server" Width="180px" OnTextChanged="TextBox6_TextChanged"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style20"></td>
                <td class="auto-style21">
                  <asp:Button ID="Button1" runat="server" CssClass="auto-style6" Text="INSERT" Width="112px" OnClick="Button1_Click" style="background-color: #008080;"/>
                </td>
            </tr>
            </table>
            </section>
            <section>
            <table class="auto-style19">
            <tr>
                <td class="auto-style15">
                    <h1 class="auto-style17"><strong>
                    <asp:Label ID="Label1" runat="server" CssClass="auto-style16" Text="Message"></asp:Label>
                    </strong></h1>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Final60]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style24">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" GridLines="Horizontal" Height="176px" Width="932px">
                        <Columns>
                            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
                            <asp:BoundField DataField="student_name" HeaderText="student_name" SortExpression="student_name" />
                            <asp:BoundField DataField="student_id" HeaderText="student_id" SortExpression="student_id" />
                            <asp:BoundField DataField="course" HeaderText="course" SortExpression="course" />
                            <asp:BoundField DataField="section" HeaderText="section" SortExpression="section" />
                            <asp:BoundField DataField="subject" HeaderText="subject" SortExpression="subject" />
                        </Columns>
                        <FooterStyle BackColor="White" ForeColor="#333333" />
                        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="White" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#487575" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#275353" />
                    </asp:GridView>
                </td>
            </tr>
 
            </table> 
          </section>  
     </form>
   </div>
</body>
</html>

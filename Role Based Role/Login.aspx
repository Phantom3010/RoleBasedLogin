<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Role_Based_Role.WebForm1" %>

<!DOCTYPE html>  
  
<html xmlns="http://www.w3.org/1999/xhtml">  
<head runat="server">  
    <title></title>  
    <style type="text/css">  
        .auto-style1 {  
            width: 100%;  
        }  
        .auto-style2 {
            height: 202px;
        }
        .auto-style3 {
            width: 504px;
        }
        .auto-style4 {
            height: 202px;
            width: 504px;
        }
        .auto-style5 {
            height: 14px;
            width: 504px;
        }
        .auto-style6 {
            height: 14px;
        }
        .auto-style7 {
            width: 504px;
            height: 41px;
        }
        .auto-style8 {
            height: 41px;
        }
        .auto-style9 {
            width: 504px;
            height: 56px;
        }
        .auto-style10 {
            height: 56px;
        }
    </style>  
</head>  
<body>  
    <form id="form1" runat="server">  
    <div>  
      
        <table class="auto-style1">  
            <tr>  
                <td colspan="2" style="text-align: center; vertical-align: top">  
                    <asp:Label ID="logRegister" runat="server" Font-Bold="True" Font-Size="XX-Large" Font-Underline="True" Text="Registration Page"></asp:Label>  
                </td>  
            </tr>  
            <tr style="display: none">  
                <td style="text-align: center" class="auto-style3">  
                    <asp:Label ID="regUserName" runat="server" Font-Size="X-Large" Text="UserId :"></asp:Label>  
                </td>  
                <td style="text-align: center">  
                    <asp:TextBox ID="txtRegId" TextMode="Number"  runat="server" Font-Size="X-Large"></asp:TextBox>  
                </td>  
            </tr>  
            <tr>  
                <td style="text-align: center; font-size: x-large;" class="auto-style9">  
                    UserName</td>  
                <td style="text-align: center" class="auto-style10">  
                    <asp:TextBox ID="txtRegUserName" runat="server" Font-Size="X-Large"></asp:TextBox>
                </td>  
            </tr>  
            <tr>  
                <td style="text-align: center" class="auto-style3">  
                    <asp:Label ID="regPassword" runat="server" Font-Size="X-Large" Text="Password :"></asp:Label>  
                </td>  
                <td style="text-align: center">  
                    <asp:TextBox ID="txtRegPassword" runat="server" Font-Size="X-Large" TextMode="Password"></asp:TextBox>  
                </td>  
            </tr>  
            <tr>  
                <td style="text-align: center; font-size: x-large;" class="auto-style7">  
                    Roles:</td>  
                <td style="text-align: center" class="auto-style8">  
                    <asp:DropDownList ID="roleAccess" runat="server" Font-Size="X-Large" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        <asp:ListItem Text="Admin" Value="0"></asp:ListItem>
                        <asp:ListItem Text="Guest" Value="1"></asp:ListItem>
                    </asp:DropDownList>
                </td>  
            </tr>  
            <tr>  
                <td class="auto-style3"> </td>  
                <td style="text-align: center">  
                    <asp:Button ID="Button2" runat="server" BorderStyle="None" Font-Size="X-Large" OnClick="Button2_Click" Text="Insert"/>
                </td>  
            </tr>  
            <tr>  
                <td class="auto-style5"> </td>  
                <td class="auto-style6">  
                    <asp:Label ID="regInvalid" runat="server" Font-Size="X-Large" ForeColor="#FF3300"></asp:Label>  
                </td>  
            </tr>  
             <tr>  
                <td class="auto-style4" style="display: none"> 
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [UserList]"></asp:SqlDataSource>
                    <asp:GridView ID="usersGridView" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="usersGridView_SelectedIndexChanged">
                        <Columns>
                            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                            <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                            <asp:BoundField DataField="Roles" HeaderText="Roles" SortExpression="Roles" />
                        </Columns>
                    </asp:GridView>
                </td>  
                <td class="auto-style2">  
                    &nbsp;</td>  
            </tr> 
        </table> <table class="auto-style1">  
            <tr>  
                <td colspan="2" style="text-align: center; vertical-align: top">  
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Font-Underline="True" Text="Login Page"></asp:Label>  
                </td>  
            </tr>  
            <tr style="display: none">  
                <td style="text-align: center" class="auto-style3">  
                    <asp:Label ID="Label2" runat="server" Font-Size="X-Large" Text="UserId :"></asp:Label>  
                </td>  
                <td style="text-align: center">  
                    <asp:TextBox ID="txtId" TextMode="Number"  runat="server" Font-Size="X-Large"></asp:TextBox>  
                </td>  
            </tr>  
            <tr>  
                <td style="text-align: center; font-size: x-large;" class="auto-style9">  
                    UserName</td>  
                <td style="text-align: center" class="auto-style10">  
                    <asp:TextBox ID="txtUserName" runat="server" Font-Size="X-Large"></asp:TextBox>
                </td>  
            </tr>  
            <tr>  
                <td style="text-align: center" class="auto-style3">  
                    <asp:Label ID="Label3" runat="server" Font-Size="X-Large" Text="Password :"></asp:Label>  
                </td>  
                <td style="text-align: center">  
                    <asp:TextBox ID="txtPassword" runat="server" Font-Size="X-Large" TextMode="Password"></asp:TextBox>  
                </td>  
            </tr>  
            <tr>  
                <td class="auto-style3"> </td>  
                <td style="text-align: center">  
                    <asp:Button ID="Button1" runat="server" BorderStyle="None" Font-Size="X-Large" OnClick="Button1_Click" Text="Log In" />  
                </td>  
            </tr>  
            <tr>  
                <td class="auto-style5"> </td>  
                <td class="auto-style6">  
                    <asp:Label ID="Label4" runat="server" Font-Size="X-Large" ForeColor="#FF3300"></asp:Label>  
                </td>  
            </tr>  
        </table>  
      
    </div>  
    </form>  
</body>  
</html>  


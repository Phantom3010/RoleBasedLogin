<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RoleAccess.aspx.cs" Inherits="Role_Based_Role.RoleAccess" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Welcome to Admin Page

                <div class="auto-style4">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [UserList]"></asp:SqlDataSource>
                    <asp:GridView ID="usersGridView" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                            <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                            <asp:BoundField DataField="Roles" HeaderText="Roles" SortExpression="Roles" />
                        </Columns>
                    </asp:GridView>
                </div>
        </div>
        <div>
            </br>
            </br>
            </br>
            <asp:Button OnClick="Logout_Click" runat="server" Text="Home Page" />
        </div>
    </form>
</body>
</html>

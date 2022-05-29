<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GuestAccess.aspx.cs" Inherits="Role_Based_Role.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Welcome to Guest page
        </div>

        </br>
        </br>
        </br>
            <asp:Button OnClick="Logout_Click" runat="server" Text="Home Page" />
    </form>
</body>
</html>

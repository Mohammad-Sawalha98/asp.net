<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Task2.aspx.cs" Inherits="Task1.Task2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px">
            </asp:DetailsView>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Delete" />
        </div>
    </form>
</body>
</html>

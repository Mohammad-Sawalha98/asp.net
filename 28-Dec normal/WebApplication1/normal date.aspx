<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="normal date.aspx.cs" Inherits="WebApplication1.normal_date" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" />

    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.all.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
           
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label> </td>

                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Comment"></asp:Label></td>
                    <td>
                        <textarea id="TextArea1" cols="30" rows="3" runat="server"></textarea></td>
                </tr>
            </table>
           

             <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>

                     <asp:Button ID="Button1" runat="server" Text="Send" OnClick="Button1_Click" />
                                <div id="soso" runat="server"></div>

                </ContentTemplate>
            </asp:UpdatePanel>

            <br />
            <br />
            
        </div>
    </form>
</body>
</html>

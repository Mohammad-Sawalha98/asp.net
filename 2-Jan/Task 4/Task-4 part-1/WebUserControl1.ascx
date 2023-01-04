<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControl1.ascx.cs" Inherits="Task_4_part_1.WebUserControl1" %>
<asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <div id="makevoting" runat="server" >
        <asp:Label ID="Label1" runat="server" Text="مدى رضاك عن خدماتنا؟"></asp:Label>
<br />
        <asp:RadioButtonList ID="vote" runat="server">
            <asp:ListItem Value="A" >ممتاز</asp:ListItem>
            <asp:ListItem Value="B">جيد جدا</asp:ListItem>
            <asp:ListItem Value="C">جيد</asp:ListItem>
            <asp:ListItem Value="D">مقبول</asp:ListItem>
            <asp:ListItem Value="E">ضعيف</asp:ListItem>
        </asp:RadioButtonList>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="تصويت" />
<br />
<br />
<br />
            </div>

        <div id="showresult" runat="server">

            <asp:Label ID="Label2" runat="server" Text="label"></asp:Label> <br />
            <asp:Label ID="Label3" runat="server" ></asp:Label><br />
            <asp:Label ID="Label4" runat="server" ></asp:Label><br />
            <asp:Label ID="Label5" runat="server" ></asp:Label><br />
            <asp:Label ID="Label6" runat="server" ></asp:Label><br />
        </div>
    </ContentTemplate>
</asp:UpdatePanel>


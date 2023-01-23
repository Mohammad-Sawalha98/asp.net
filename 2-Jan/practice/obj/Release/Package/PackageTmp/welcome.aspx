<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="welcome.aspx.cs" Inherits="practice.welcome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>



            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MobileZoneConnectionString %>" DeleteCommand="DELETE FROM [Category] WHERE [category_id] = @category_id" InsertCommand="INSERT INTO [Category] ([category_img]) VALUES (@category_img)" SelectCommand="SELECT [category_id], [category_img] FROM [Category]" UpdateCommand="UPDATE [Category] SET [category_img] = @category_img WHERE [category_id] = @category_id">
                <DeleteParameters>
                    <asp:Parameter Name="category_id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="category_img" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="category_img" Type="String" />
                    <asp:Parameter Name="category_id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>



        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="category_id" DataSourceID="SqlDataSource1" OnRowUpdating="GridView1_RowUpdating">
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="category_id" HeaderText="category_id" InsertVisible="False" ReadOnly="True" SortExpression="category_id" />
                <asp:TemplateField HeaderText="category_img" SortExpression="category_img">
                    <EditItemTemplate>
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Bind("category_img") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>

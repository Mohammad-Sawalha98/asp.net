<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Task1.aspx.cs" Inherits="Task1.Task1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        
            <div>
            <asp:Label ID="lblNum" runat="server"  Text="Label" BackColor="Lime"> </asp:Label><br />
        <asp:Label ID="lblAvg" runat="server"  Text="Label" BackColor="#FFCCFF"></asp:Label><br />
        <asp:Label ID="lblMax" runat="server"  Text="Label" BackColor="#FF3300">  </asp:Label>

            <table Class="table table-striped">
               
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Customer Name"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Age"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="City"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataTextField="City" DataValueField="City">
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Phone"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="Email"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label7" runat="server" Text="Photo" Width="150px"></asp:Label>
                    </td>
                    <td>
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Insert" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        <asp:GridView ID="GridView1" Class="table table-striped" runat="server" AutoGenerateColumns="False">
            <Columns>
                
            <asp:BoundField DataField="CustomerName" HeaderText="Name" />
            <asp:BoundField DataField="Age" HeaderText="Age" />
            <asp:BoundField DataField="City1" HeaderText="City" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" />
            <asp:BoundField DataField="Email" HeaderText="Email" />
                 <asp:ImageField DataImageUrlField="Photo"  HeaderText="Photo" ><ControlStyle Width="150px" />
                </asp:ImageField>
              <%--  <asp:TemplateField HeaderText="Photo">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Photo") %>' Width="150px " />
                    </ItemTemplate>
                </asp:TemplateField>--%>
                <asp:HyperLinkField DataNavigateUrlFields="CustomerID" DataNavigateUrlFormatString="Task2.aspx?CustomerID={0}" Text="Delete" />
                <asp:HyperLinkField DataNavigateUrlFields="CustomerID" DataNavigateUrlFormatString="edit.aspx?CustomerID={0}" Text="Edit" />
            </Columns>
        </asp:GridView>
       <%-- <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="CustomerName" HeaderText="Name" />
                <asp:BoundField DataField="Age" HeaderText="Age" />
                <asp:BoundField DataField="CityID" HeaderText="City" />
                <asp:BoundField DataField="Phone" HeaderText="phone" />
                <asp:BoundField DataField="Email" HeaderText="Email" />
                <asp:ImageField DataImageUrlField="Photo" HeaderText="Photo">
                </asp:ImageField>
                <asp:HyperLinkField DataNavigateUrlFields="CustomerID" DataNavigateUrlFormatString="Task2.aspx?CustomerID={0}" Text="Delete" />
                <asp:HyperLinkField DataNavigateUrlFields="CustomerID" DataNavigateUrlFormatString="edit.aspx?CustomerID={0}" Text="Edit" />
            </Columns>
        </asp:GridView>--%>
    </form>
</body>
</html>

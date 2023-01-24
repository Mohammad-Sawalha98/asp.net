<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Task2.aspx.cs" Inherits="Task1.Task2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
   
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DetailsView ID="DetailsView1" Class="table table-striped" runat="server" Height="50px" Width="125px" AutoGenerateRows="False">
                <Fields>
                    <asp:BoundField DataField="CustomerName" HeaderText="Name" />
                    <asp:BoundField DataField="Age" HeaderText="Age" />
                    <asp:BoundField DataField="CityID" HeaderText="City" />
                    <asp:BoundField DataField="Phone" HeaderText="Phone" />
                    <asp:BoundField DataField="Email" HeaderText="Email" />
                    <asp:ImageField DataImageUrlField="Photo" HeaderText="Photo">
                        <ControlStyle Width="100px" />
                    </asp:ImageField>
                </Fields>
            </asp:DetailsView>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Delete" />
        </div>
    </form>
</body>
</html>

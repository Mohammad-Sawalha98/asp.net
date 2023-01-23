<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="practice.aspx.cs" Inherits="practice2.practice" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous"/>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:students detailsConnectionString %>" SelectCommand="SELECT * FROM [Table_1]"></asp:SqlDataSource>
            <br />
            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    <div class="rptr">
                <table class="table">

                    <tr class="table-dark"><td>Student Name </td> <td><%#Eval("student name")%></td></tr>
                    <tr><td>Rigister Num</td><td><%#Eval("Rigister Num")%></td></tr>
                     <tr><td>D.O.B</td><td><%#Eval("Date of birth")%></td></tr>
                     <tr><td>D.O.E</td><td><%#Eval("Date of Examination")%></td></tr>
                     <tr><td>Department</td><td><%#Eval("Department")%></td></tr>
                    
                </table>

            </div>

                </ItemTemplate>
            </asp:Repeater>
            <br />
            <br />

        </div>
    </form>
</body>
</html>

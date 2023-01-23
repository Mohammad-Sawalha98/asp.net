<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Practice._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <asp:Repeater ID="Repeater1" runat="server">
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

    



</asp:Content>

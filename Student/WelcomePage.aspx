<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WelcomePage.aspx.cs" Inherits="Student.WelcomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h1>Welcome 
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </h1>
        <br>
        <p> 
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Admit Student" />
        </p>
        <p> 
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Modify Student" />
        </p>
        <p> 
            <asp:Button ID="Button3" runat="server" Text="Delete Student" />
        </p>
    </div>
</asp:Content>

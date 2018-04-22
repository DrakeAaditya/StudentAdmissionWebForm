<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegistrationPageMain.aspx.cs" Inherits="Student.RegistrationPageMain" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h1>Registration</h1>
        <br>
        <p> Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </p>
        <p> Designation&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>Clerk</asp:ListItem>
                <asp:ListItem>HR</asp:ListItem>
                <asp:ListItem>Registration</asp:ListItem>
                <asp:ListItem>Office Staff</asp:ListItem>
            </asp:DropDownList>
        </p>
        <p> Gender&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; <asp:RadioButton ID="RadioButton1" runat="server" Text="Male" />
&nbsp;
            <asp:RadioButton ID="RadioButton2" runat="server" Text="Female" />
        </p>
        <p> Hobbies&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; <asp:CheckBox ID="CheckBox1" runat="server" Text="Cricket" />
&nbsp;
            <asp:CheckBox ID="CheckBox2" runat="server" Text="Basketball" />
&nbsp;
            <asp:CheckBox ID="CheckBox3" runat="server" Text="Volleyball" />
&nbsp;
            <asp:CheckBox ID="CheckBox4" runat="server" Text="Chess" />
        </p>
        <p> Username&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </p>
        <p> Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
    <br>
            Confirm Password&nbsp;&nbsp;
            <asp:TextBox ID="TextBox5" runat="server" TextMode="Password"></asp:TextBox>
        </p>
        <p> &nbsp;</p>
        <p> 
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Sign Up" />
        </p>
    </div>
</asp:Content>

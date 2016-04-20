<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddMember.aspx.cs" Inherits="JLTInternal.AddMember" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="Register">
        Register a New Member<br />
        <br />
        <br />
        <asp:TextBox runat="server" placeholder="First Name" Style="text-align: center" ID="TbFirst" MaxLength="25"></asp:TextBox><br />
        <br />
        <br />
        <asp:TextBox runat="server" placeholder="Second Name" Style="text-align: center" ID="TbLast" MaxLength="25"></asp:TextBox><br />
        <br />
        <br />
        <asp:TextBox runat="server" placeholder="Form" Style="text-align: center" ID="TbForm" MaxLength="5"></asp:TextBox><br />
        <br />
        <br />
        <asp:TextBox runat="server" placeholder="Email" Style="text-align: center" ID="TbEmail" MaxLength="50"></asp:TextBox><br />
        <br />
        <br />
        <asp:TextBox runat="server" placeholder="Image" Style="text-align: center" ID="TbImage"></asp:TextBox><br />
        <br />
        <br />
        <asp:TextBox runat="server" placeholder="Description" Style="text-align: center" ID="TbDescription" MaxLength="150" TextMode="MultiLine"></asp:TextBox><br />
        <br />
        <br />
        <asp:Label ID="LblError" runat="server" Text=""></asp:Label><br />
        <br />
        <asp:Button ID="BtnSubmit" runat="server" Text="Submit!" OnClick="BtnSubmit_Click" />
    </div>
</asp:Content>

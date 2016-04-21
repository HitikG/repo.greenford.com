<%@ Page Title="" Language="C#" MasterPageFile="~/Internal/Site1.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="JLTInternal.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="Register">
        Take a Register<br />
        <br />
        <br />
        Day:
        <asp:DropDownList ID="Day" runat="server"></asp:DropDownList>
        Month:
        <asp:DropDownList ID="Month" runat="server" AutoPostBack="True"></asp:DropDownList>
        Year:
        <asp:DropDownList ID="Year" runat="server" AutoPostBack="True"></asp:DropDownList>
        <asp:DataList ID="Dl" runat="server" DataSourceID="DsJLT" DataKeyField="ID">
            <ItemTemplate>
                <div class="Section">
                    <div class="Names">
                <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' Visible="False" />
                        Name:
                <asp:Label ID="FirstNameLabel" runat="server" Text='<%# Eval("FirstName") %>' />
                        <asp:Label ID="LastNameLabel" runat="server" Text='<%# Eval("LastName") %>' />
                        <br />
                        <br />
                    </div>
                    <div class="Registered">
                        <asp:CheckBox ID="CbChecked" runat="server" />
                    </div>
                </div>
                <asp:LinkButton ID="LinkButton1" runat="server"></asp:LinkButton>
            </ItemTemplate>
        </asp:DataList>

        <asp:SqlDataSource ID="DsJLT" runat="server" ConnectionString="<%$ ConnectionStrings:DsJLT %>" SelectCommand="SELECT [ID], [FirstName], [LastName] FROM [Members]"></asp:SqlDataSource>
        <asp:Label ID="LblError" runat="server" Text=""></asp:Label><br />
        <br />
        <asp:Button ID="BtnAdd" runat="server" Text="Add!" OnClick="BtnAdd_Click" />
    </div>
</asp:Content>

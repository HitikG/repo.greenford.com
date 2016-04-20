<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ViewMembers.aspx.cs" Inherits="JLTInternal.ViewMembers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="SQLTable">
        <br /><br />
        <asp:sqldatasource runat="server" ID="DsJLT" ConnectionString="<%$ ConnectionStrings:DsJLT %>" SelectCommand="SELECT * FROM [Members]" DeleteCommand="DELETE FROM [Members] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Members] ([FirstName], [LastName], [Form], [Image], [Email], [Description]) VALUES (@FirstName, @LastName, @Form, @Image, @Email, @Description)" UpdateCommand="UPDATE [Members] SET [FirstName] = @FirstName, [LastName] = @LastName, [Form] = @Form, [Image] = @Image, [Email] = @Email, [Description] = @Description WHERE [ID] = @ID">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            
        </asp:sqldatasource>
        <asp:GridView ID="GwMembers" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="DsJLT" CssClass="SQLTable">
            <Columns>
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                <asp:BoundField DataField="Form" HeaderText="Form" SortExpression="Form" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>

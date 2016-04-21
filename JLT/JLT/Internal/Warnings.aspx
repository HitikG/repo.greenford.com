<%@ Page Title="" Language="C#" MasterPageFile="~/Internal/Site1.Master" AutoEventWireup="true" CodeBehind="Warnings.aspx.cs" Inherits="JLTInternal.Warnings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <asp:Panel ID="PnlButtons" runat="server" CssClass="Register">
        <asp:Button ID="BtnSearch" runat="server" Text="Search" OnClick="BtnSearch_Click" /><br />
        <br />
        <asp:Button ID="BtnAdd" runat="server" Text="Add" OnClick="BtnAdd_Click" />
    </asp:Panel>
    <br />
    <br />
    <asp:Panel ID="PnlSearch" runat="server" Visible="false">
        <div class="Register">
            Search for warnings
            <br />
            <br />
            <asp:TextBox ID="TbName" runat="server" placeholder="First Name"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="BtnCheck" runat="server" Text="Check" />
        </div>
        <br />
        <br />
        <asp:SqlDataSource runat="server" ID="DsJLT" ConnectionString="<%$ ConnectionStrings:DsJLT %>" SelectCommand="SELECT * FROM [Warnings] WHERE ([CommittedBy] = @CommittedBy)">
            <FilterParameters>
                <asp:ControlParameter Name="Name" ControlID="TbName" PropertyName="Text" />
            </FilterParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="TbName" Name="CommittedBy" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <div class="SQLTable">
            <asp:GridView ID="GwMembers" runat="server" AutoGenerateColumns="False" CssClass="SQLTable" AllowPaging="True" DataSourceID="DsJLT">
                <Columns>
                    <asp:BoundField DataField="CommittedBy" HeaderText="CommittedBy" SortExpression="CommittedBy" />
                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                    <asp:BoundField DataField="Severity" HeaderText="Severity" SortExpression="Severity" />
                    <asp:BoundField DataField="Occurred" HeaderText="Occurred" SortExpression="Occurred" />
                </Columns>
            </asp:GridView>
        </div>
    </asp:Panel>

    <asp:Panel ID="PnlAdd" runat="server" Visible="false" CssClass="Warnings">
        <div class="Warnings">
            Register a New Warning
            <br />
            <br />
            <asp:DropDownList ID="DlName" runat="server" DataTextField="CommitedBy" DataValueField="CommitedBy"></asp:DropDownList>
            <br />
            <br />
            Severity
            <br />
            <br />
            <asp:DropDownList ID="DlSeverity" runat="server"></asp:DropDownList>
            <br />
            <br />
            Description
            <br />
            <br />
            <asp:TextBox ID="TbDescription" runat="server" TextMode="MultiLine"></asp:TextBox>
            <br />
            <br />
            Date Occured
            <br />
            <br />
            <asp:Calendar ID="Cal" runat="server"></asp:Calendar>
            <br />
            <br />
            <asp:Label ID="LblError" runat="server" Text=""></asp:Label>
            <br />
            <br />
            <asp:Button ID="BtnSubmit" runat="server" Text="Submit" OnClick="BtnSubmit_Click" />
        </div>
    </asp:Panel>


</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Internal/Site1.Master" AutoEventWireup="true" CodeBehind="Members.aspx.cs" Inherits="JLTInternal.Members" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="CoreBundles/metro-icons.css" rel="stylesheet" />
    <link href="CoreBundles/metro.css" rel="stylesheet" />
    <br />
    <br />
    <br />
    <br />
    <div class="Metro">
        <a class="shortcut-button bg-cyan bg-active-darkBlue fg-white" href="AddMember.aspx">
            <span class="h1">Add Members</span>
        </a>

        <a class="smallshortcut-button bg-orange bg-active-darkBlue fg-white text-dec" href="ViewMembers.aspx">
            <span class="h1">View Members</span>
        </a>
        <br />
    </div>
    <div class="Metro">
        <a class="shortcut-button bg-green bg-active-darkBlue fg-white text-dec" href="Register.aspx">
            <span class="h1">Take Register</span>
        </a>
        <a class="rectangle-button bg-red bg-active-darkBlue fg-white text-dec" href="Warnings.aspx" style="padding-left: 20px;">
            <span class="h1">View Warnings</span>
        </a>
    </div>
</asp:Content>

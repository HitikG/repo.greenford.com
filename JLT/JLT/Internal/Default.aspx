<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="JLTInternal.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="Register">
        <div class="row">
            <div class="col-xs-4 col-md-2">
                <a href="Diary.aspx" class="Links">
                    <img src="/Images/Diary.png" />
                    <br />
                </a>
                Diary            
            </div>
            <div class="col-xs-4 col-md-2">
                <a href="#" class="Links">
                    <img src="/Images/Gallery.png" />
                    <br />
                </a>
                Gallery           
            </div>
            <div class="col-xs-4 col-md-2">
                <a href="#" class="Links">
                    <img src="/Images/Suggestions.png" />
                    <br />
                </a>
                Suggestions          
            </div>
        </div>
        <div class="row">
            <div class="col-xs-4 col-md-2">
                <div class="Centering">
                    <a href="#" class="Links">
                        <img src="/Images/Minutes.png" />
                        <br />
                    </a>
                    Minutes   
                </div>
            </div>
            <div class="col-xs-4 col-md-2">
                <a href="#" class="Links">
                    <img src="/Images/Files.png" />
                    <br />
                </a>
                Files
            </div>
            <div class="col-xs-4 col-md-2">
                <a href="Members.aspx" class="Links">
                    <img src="/Images/Register.png" />
                    <br />
                </a>
                Members      
            </div>
        </div>
    </div>
</asp:Content>

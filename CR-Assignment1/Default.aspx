<%@ Page Title="Home" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CR_Assignment1.Default1" %>


<asp:Content ID="default" ContentPlaceHolderID="head" runat="server">
    <!--
    Author: Christian Simpson, Robert Page
    Main home page
    -->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="col-md-2">
            <img src="Assets/Logo.png" width="130"/>
        </div>
        

        <div class="col-md-8 well well-lg">
            <h1>Welcome to Gamer Tracer!</h1>
        </div>

        <div class="col-md-10 well well-lg">
            <div class="panel panel-default panel-body">
            <p>
                This site will track 4 E-Sports games and show their latest scores on the main sports page. Each sports page will have a link to the individual teams to be bale to see a more in depth version of the information.
            </p>
            </div>
        </div>

       <div class="col-md-10 well well-lg">
            <div class="panel panel-default">
        <!-- Default panel contents -->
        <div class="panel-heading">Games Curently being tracked</div>
                <!-- List group -->
                <ul class="list-group">
                    <li class="list-group-item"><a href="Sport1.aspx">Overwatch</a>- A 6v6 FPS with many heroes made by Blizzard</li>
                    <li class="list-group-item"><a href="Sport4.aspx">Heroes of the Storm</a>- A 5v5 MOBA with many Heroes made by Blizzard</li>
                    <li class="list-group-item"><a href="Sport3.aspx">League of Legends</a>- A 5v5 MOBA with many heroes made by RIOT</li>
                    <li class="list-group-item"><a href="Sport2.aspx">Counter Strike: Global Offensive</a>- A 6v6 heavily team based FPS made by Valve</li>
                </ul>
            </div> 
        </div>
        
    </div>
</asp:Content>

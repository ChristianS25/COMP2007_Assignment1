﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CR_Assignment1.Default1" %>


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
            <p>
                Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
            </p>
        </div>

       <div class="col-md-10 well well-lg">
            <div class="panel panel-default">
        <!-- Default panel contents -->
        <div class="panel-heading">Games Curently being tracked</div>
                <!-- List group -->
                <ul class="list-group">
                    <li class="list-group-item">Overwatch</li>
                    <li class="list-group-item">Heroes of the Storm</li>
                    <li class="list-group-item">League of Legends</li>
                    <li class="list-group-item">Counter Strike: Global Offensive</li>
                </ul>
            </div> 
        </div>
        
    </div>
</asp:Content>

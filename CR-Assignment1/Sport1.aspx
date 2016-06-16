<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Sport1.aspx.cs" Inherits="CR_Assignment1.Sport1" %>

<asp:Content ID="sport1" ContentPlaceHolderID="head" runat="server">
    <!--
    Author: Christian Simpson, Robert Page
    This will track a specific games, teams score and ranking.
    -->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="col-md-10 col-md-offset-2">
            <img src="/Assets/overwatch.png" />
        </div>
        
        <div class="col-md-2 well">
            <img src="/Assets/cloud9.png" width="150"/>
        </div>

        <div class="col-md-6 col-md-offset-1 well">
             <div class="panel panel-default">
             <!-- Default panel contents -->
             <div class="panel-heading">Team Cloud9 Members</div>
                <!-- List group -->
                <ul class="list-group">
                    <li class="list-group-item">Adam Eckel</li>
                    <li class="list-group-item">Debett</li>
                    <li class="list-group-item">Surefour</li>
                    <li class="list-group-item">Reaver</li>
                    <li class="list-group-item">Grego</li>
                    <li class="list-group-item">KyKy</li>
                </ul>
            </div> 
        </div>

       <div class="col-md-2 col-md-offset-1 well">
             <div class="panel panel-default">
             <!-- Default panel contents -->
             <div class="panel-heading">Team Cloud9 Scores</div>
                <!-- List group -->
                <ul class="list-group">
                    <li class="list-group-item">Wins</li>
                    <li class="list-group-item">Losses</li>
                    <li class="list-group-item">Rank</li>
                    <li class="list-group-item">#Games</li>
                </ul>
            </div> 
        </div>
    </div>

    <div class="container">
        <div class="col-md-2 pull-left  well">
            <img src="/Assets/luminosity.png" width="150"/>
        </div>

        <div class="col-md-6 col-md-offset-1 well">
             <div class="panel panel-default">
             <!-- Default panel contents -->
             <div class="panel-heading">Team Lumosity Members</div>
                <!-- List group -->
                <ul class="list-group">
                    <li class="list-group-item">EnigmaOW</li>
                    <li class="list-group-item">milo51</li>
                    <li class="list-group-item">Seagull</li>
                    <li class="list-group-item">Esper</li>
                    <li class="list-group-item">Gods</li>
                    <li class="list-group-item">Pookz</li>
                </ul>
            </div> 
        </div>

        <div class="col-md-2 col-md-offset-1 well">
             <div class="panel panel-default">
             <!-- Default panel contents -->
             <div class="panel-heading">Team Lumosity Score</div>
                <!-- List group -->
                <ul class="list-group">
                    <li class="list-group-item">Wins</li>
                    <li class="list-group-item">Losses</li>
                    <li class="list-group-item">Rank</li>
                    <li class="list-group-item">#Games</li>
                </ul>
            </div> 
        </div>
        
                <asp:GridView runat="server" CssClass="table table-bordered table-striped table-hover"
                    ID="teamsGridView" AutoGenerateColumns="false" DataKeyNames="team_id"
                    AllowPaging="true" PageSize="3"
                    OnPageIndexChanging="teamsGridView_PageIndexChanging" 
                    PagerStyle-CssClass="pagination-ys">
                    <Columns>
                        <asp:BoundField DataField="team_id" HeaderText="Team ID" Visible="true" SortExpression="team_id" />
                        <asp:BoundField DataField="team_name" HeaderText="Team Name" Visible="true" SortExpression="team_name" />
                        <asp:BoundField DataField="team_wins" HeaderText="Wins" Visible="true" SortExpression="team_wins" />
                        <asp:BoundField DataField="team_losses" HeaderText="Losses" Visible="true" SortExpression="team_losses" />
                        <asp:BoundField DataField="team_rank" HeaderText="Rank" Visible="true" SortExpression="team_rank" />
                        <asp:BoundField DataField="team_number_of_games" HeaderText="# of Games" Visible="true" SortExpression="team_number_of_games" />
                        <asp:HyperLinkField HeaderText="Edit" Text="<i class='fa fa-pencil-square-o fa-lg'></i> Edit" 
                            NavigateUrl="~/Sport1.aspx.cs" ControlStyle-CssClass="btn btn-primary btn-sm" runat="server"
                            DataNavigateUrlFields="team_id" DataNavigateUrlFormatString="Sport1.aspx?team_id={0}" />
                        </Columns>
                </asp:GridView>
    </div>
    
</asp:Content>

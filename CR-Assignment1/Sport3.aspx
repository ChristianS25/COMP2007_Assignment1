<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Sport3.aspx.cs" Inherits="CR_Assignment1.Sport3" %>

<asp:Content ID="sport3" ContentPlaceHolderID="head" runat="server">
    <!--
    Author: Christian Simpson, Robert Page
    This will track a specific games, teams score and ranking.
    -->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="col-md-10 col-md-offset-3">
            <img src="/Assets/league.png" />
        </div>
        
        <div class="col-md-2 well">
            <img src="/Assets/immortals.png" width="150"/>
        </div>

        <div class="col-md-6 col-md-offset-1 well">
             <div class="panel panel-default">
             <!-- Default panel contents -->
             <div class="panel-heading">Team Fnatic Members</div>
                <!-- List group -->
                <ul class="list-group">
                    <li class="list-group-item">JW</li>
                    <li class="list-group-item">Flusha</li>
                    <li class="list-group-item">KRiMZ</li>
                    <li class="list-group-item">Olofmeister</li>
                    <li class="list-group-item">Dennis</li>
                    <li class="list-group-item">Plesson</li>
                    <li class="list-group-item">Wenton</li>
                </ul>
            </div> 
        </div>

       <div class="col-md-2 col-md-offset-1 well">
             <div class="panel panel-default">
             <!-- Default panel contents -->
             <div class="panel-heading">Team Fnatic Scores</div>
                <!-- List group -->                
               <asp:GridView runat="server" CssClass="table table-bordered table-striped table-hover"
                    ID="GridView1" AutoGenerateColumns="false" DataKeyNames="team_id"
                    AllowPaging="true" PageSize="3"
                    PagerStyle-CssClass="pagination-ys">
                    <Columns>
                        <asp:BoundField DataField="team_wins" HeaderText="Wins" Visible="true" SortExpression="team_wins" />
                    </Columns>
                </asp:GridView>

                <asp:GridView runat="server" CssClass="table table-bordered table-striped table-hover"
                    ID="GridView2" AutoGenerateColumns="false" DataKeyNames="team_id"
                    AllowPaging="true" PageSize="3" 
                    PagerStyle-CssClass="pagination-ys">
                    <Columns>
                        <asp:BoundField DataField="team_losses" HeaderText="Losses" Visible="true" SortExpression="team_losses" />
                    </Columns>
                </asp:GridView>
                    
                <asp:GridView runat="server" CssClass="table table-bordered table-striped table-hover"
                    ID="GridView3" AutoGenerateColumns="false" DataKeyNames="team_id"
                    AllowPaging="true" PageSize="3" 
                    PagerStyle-CssClass="pagination-ys">
                    <Columns>
                        <asp:BoundField DataField="team_rank" HeaderText="Rank" Visible="true" SortExpression="team_rank" />
                    </Columns>
                </asp:GridView>
                    
                <asp:GridView runat="server" CssClass="table table-bordered table-striped table-hover"
                    ID="GridView4" AutoGenerateColumns="false" DataKeyNames="team_id"
                    AllowPaging="true" PageSize="3" 
                    PagerStyle-CssClass="pagination-ys">
                    <Columns>
                        <asp:BoundField DataField="team_number_of_games" HeaderText="# of Games" Visible="true" SortExpression="team_number_of_games" />
                    </Columns>
                </asp:GridView>

            </div> 
        </div>
    </div>
    <div class="container">
        </div>

    <div class="container">
        <div class="col-md-2 pull-left  well">
            <img src="/Assets/snake.png" width="150"/>
        </div>

        <div class="col-md-6 col-md-offset-1 well">
             <div class="panel panel-default">
             <!-- Default panel contents -->
             <div class="panel-heading">Team Epsilon Members</div>
                <!-- List group -->
                <ul class="list-group">
                    <li class="list-group-item">Draken</li>
                    <li class="list-group-item">MorkEn</li>
                    <li class="list-group-item">REZ</li>
                    <li class="list-group-item">FreddieB</li>
                    <li class="list-group-item">Disco Doplan</li>
                    <li class="list-group-item">Xelos</li>
                </ul>
            </div> 
        </div>

       <div class="col-md-2 col-md-offset-1 well">
             <div class="panel panel-default">
             <!-- Default panel contents -->
             <div class="panel-heading">Team Epsilon Scores</div>
                <!-- List group -->                
               <asp:GridView runat="server" CssClass="table table-bordered table-striped table-hover"
                    ID="GridView5" AutoGenerateColumns="false" DataKeyNames="team_id"
                    AllowPaging="true" PageSize="3"
                    PagerStyle-CssClass="pagination-ys">
                    <Columns>
                        <asp:BoundField DataField="team_wins" HeaderText="Wins" Visible="true" SortExpression="team_wins" />
                    </Columns>
                </asp:GridView>

                <asp:GridView runat="server" CssClass="table table-bordered table-striped table-hover"
                    ID="GridView6" AutoGenerateColumns="false" DataKeyNames="team_id"
                    AllowPaging="true" PageSize="3" 
                    PagerStyle-CssClass="pagination-ys">
                    <Columns>
                        <asp:BoundField DataField="team_losses" HeaderText="Losses" Visible="true" SortExpression="team_losses" />
                    </Columns>
                </asp:GridView>
                    
                <asp:GridView runat="server" CssClass="table table-bordered table-striped table-hover"
                    ID="GridView7" AutoGenerateColumns="false" DataKeyNames="team_id"
                    AllowPaging="true" PageSize="3" 
                    PagerStyle-CssClass="pagination-ys">
                    <Columns>
                        <asp:BoundField DataField="team_rank" HeaderText="Rank" Visible="true" SortExpression="team_rank" />
                    </Columns>
                </asp:GridView>
                    
                <asp:GridView runat="server" CssClass="table table-bordered table-striped table-hover"
                    ID="GridView8" AutoGenerateColumns="false" DataKeyNames="team_id"
                    AllowPaging="true" PageSize="3" 
                    PagerStyle-CssClass="pagination-ys">
                    <Columns>
                        <asp:BoundField DataField="team_number_of_games" HeaderText="# of Games" Visible="true" SortExpression="team_number_of_games" />
                    </Columns>
                </asp:GridView>

            </div> 
        </div>
        
               
    </div>
</asp:Content>

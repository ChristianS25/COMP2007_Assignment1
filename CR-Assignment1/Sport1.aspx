<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Sport1.aspx.cs" Inherits="CR_Assignment1.Sport1" %>

<asp:Content ID="sport1" ContentPlaceHolderID="head" runat="server">
    <!--
    Author: Christian Simpson, Robert Page
    This will track a specific games, teams score and ranking.
    -->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="col-md-8 col-md-offset-3">
            <img src="/Assets/overwatch.png" />
        </div>
        
        <div class="col-md-2 well">
            <img src="/Assets/cloud9.png" width="150"/>
        </div>

        <div class="col-md-6 col-md-offset-1 well">
             <div class="panel panel-default">
             <!-- Default panel contents -->
             <div class="panel-heading"><a href="Team1.aspx">Cloud9 Members</a></div>
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
             <div class="panel-heading">Team Cloud9 Scores</div>
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

<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Team7.aspx.cs" Inherits="CR_Assignment1.Team7" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!--
    Author: Christian Simpson, Robert Page
    This will track a specific teams score and ranking.
    -->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
    <asp:GridView runat="server" CssClass="table table-bordered table-striped table-hover"
                    ID="GridView4" AutoGenerateColumns="false" DataKeyNames="team_id"
                    AllowPaging="true" PageSize="3" 
                    PagerStyle-CssClass="pagination-ys">
                    <Columns>
                        <asp:BoundField DataField="team_name" HeaderText="Team Name" Visible="true" SortExpression="team_name" />
                         <asp:BoundField DataField="team_wins" HeaderText="Number of Wins" Visible="true" SortExpression="team_wins" />
                         <asp:BoundField DataField="team_losses" HeaderText="Number of Losses" Visible="true" SortExpression="team_losses" />
                         <asp:BoundField DataField="team_rank" HeaderText="Rank" Visible="true" SortExpression="team_rank" />
                         <asp:BoundField DataField="team_number_of_games" HeaderText="Number of Games" Visible="true" SortExpression="team_number_of_games" />
                         <asp:BoundField DataField="team_week_number" HeaderText="Week Number" Visible="true" SortExpression="team_week_number" />
                         <asp:HyperLinkField HeaderText="Edit" Text="<i class='fa fa-pencil-square-o fa-lg'></i> Edit" 
                            NavigateUrl="~/Sport1.aspx.cs" ControlStyle-CssClass="btn btn-primary btn-sm" runat="server"
                            DataNavigateUrlFields="team_id" DataNavigateUrlFormatString="edit.aspx?team_id={0}" />
                    </Columns>
                </asp:GridView>
        </div>
</asp:Content>

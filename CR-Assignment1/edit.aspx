<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="edit.aspx.cs" Inherits="CR_Assignment1.edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-offset-3 col-md-6">
                <h1>Student Details</h1>
                <h5>All Fields are Required</h5>
                <br />
                <div class="form-group">
                    <label class="control-label" for="WinsTextBox">Wins</label>
                    <asp:TextBox runat="server" textmode="Number" CssClass="form-control" ID="WinsTextBox" placeholder="Enter a number of wins" required="true"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label class="control-label" for="LossesTextBox">Losses</label>
                    <asp:TextBox runat="server" textmode="Number" CssClass="form-control" ID="LossesTextBox" placeholder="Enter a number of losses" required="true"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label class="control-label" for="RankTextBox">Rank</label>
                    <asp:TextBox runat="server" textmode="Number" CssClass="form-control" ID="RankTextBox" placeholder="Enter a number for rank" required="true"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label class="control-label" for="NumberofGamesTextBox">Number of Games</label>
                    <asp:TextBox runat="server" textmode="Number" CssClass="form-control" ID="NumberofGamesTextBox" placeholder="Enter a number of games" required="true"></asp:TextBox>
                </div>
                <div class="text-right">
                    <asp:Button Text="Cancel" ID="CancelButton" CssClass="btn btn-warning btn-lg" runat="server" 
                        UseSubmitBehavior="false" CausesValidation="false" OnClick="CancelButton_Click" />
                    <asp:Button Text="Save" ID="SaveButton" CssClass="btn btn-primary btn-lg" runat="server" OnClick="SaveButton_Click" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>

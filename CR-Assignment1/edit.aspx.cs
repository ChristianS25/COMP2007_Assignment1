using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using CR_Assignment1.models;
using System.Web.ModelBinding;


namespace CR_Assignment1
{
    public partial class edit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((!IsPostBack) && (Request.QueryString.Count > 0))
            {
                this.GetTeams();
            }
        }

        protected void GetTeams()
        {
            // populate teh form with existing data from the database
            int TeamID = Convert.ToInt32(Request.QueryString["team_id"]);

            // connect to the EF DB
            using (DefaultConnection db = new DefaultConnection())
            {
                // populate a student object instance with the StudentID from the URL Parameter
                team updatedTeam = (from teams in db.teams
                                          where teams.team_id == TeamID
                                          select teams).FirstOrDefault();

                // map the student properties to the form controls
                if (updatedTeam != null)
                {
                    WinsTextBox.Text = updatedTeam.team_wins.ToString();
                    LossesTextBox.Text = updatedTeam.team_losses.ToString();
                    RankTextBox.Text = updatedTeam.team_rank.ToString();
                    NumberofGamesTextBox.Text = updatedTeam.team_number_of_games.ToString();
                }
            }
        }

        protected void CancelButton_Click(object sender, EventArgs e)
        {
            // Redirect back to Students page
            Response.Redirect("~/default.aspx");
        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {
            // Use EF to connect to the server
            using (DefaultConnection db = new DefaultConnection())
            {
                // use the Student model to create a new student object and
                // save a new record
                team newTeam = new team();

                int TeamID = 0;

                if (Request.QueryString.Count > 0) // our URL has a StudentID in it
                {
                    // get the id from the URL
                    TeamID = Convert.ToInt32(Request.QueryString["team_id"]);

                    // get the current student from EF DB
                    newTeam = (from teams in db.teams
                                  where teams.team_id == TeamID
                                  select teams).FirstOrDefault();
                }

                // add form data to the new student record
                newTeam.team_wins = Convert.ToInt32(WinsTextBox.Text);
                newTeam.team_losses= Convert.ToInt32(LossesTextBox.Text);
                newTeam.team_rank = Convert.ToInt32(RankTextBox.Text);
                newTeam.team_number_of_games = Convert.ToInt32(NumberofGamesTextBox.Text);

                // use LINQ to ADO.NET to add / insert new student into the database

                if (TeamID == 0)
                {
                    db.teams.Add(newTeam);
                }


                // save our changes - also updates and inserts
                db.SaveChanges();

                // Redirect back to the updated students page
                Response.Redirect("~/Default.aspx");
            }
        }
    }
}

using CR_Assignment1.models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.ModelBinding;
using System.Web.UI.WebControls;

namespace CR_Assignment1
{
    public partial class Team5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // if loading the page for the first time, populate the student grid
            if (!IsPostBack)
            {
                Session["SortColumn"] = "StudentID"; // default sort column
                Session["SortDirection"] = "ASC";
                // Get the student data
                this.GetTeams();
            }
        }

        /**
         * <summary>
         * This method gets the student data from the DB
         * </summary>
         * 
         * @method GetStudents
         * @returns {void}
         */
        protected void GetTeams()
        {
            // connect to EF
            using (TeamConnection db = new TeamConnection())
            {
                string SortString = Session["SortColumn"].ToString() + " " + Session["SortDirection"].ToString();


                // query the Teams Table using EF and LINQ
                var Teams = (from allTeams in db.teams
                             where allTeams.team_name == "Immortals"
                             select allTeams);



                // bind the result to the GridView
                GridView4.DataSource = Teams.AsQueryable().ToList();
                GridView4.DataBind();

                // query the Students Table using EF and LINQ
                var Students = (from allStudents in db.teams
                                select allStudents);


            }
        }

    }

    /**
     * <summary>
     * This event handler allows pagination to occur for the Students page
     * </summary>
     * 
     * @method StudentsGridView_PageIndexChanging
     * @param {object} sender
     * @param {GridViewPageEventArgs} e
     * @returns {void}
     */
}

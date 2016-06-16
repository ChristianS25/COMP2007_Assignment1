using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


using System.Web.ModelBinding;
using System.Linq.Expressions;
using CR_Assignment1.models;

namespace CR_Assignment1
{
    public partial class Sport1 : System.Web.UI.Page
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
            using (DefaultConnection db = new DefaultConnection())
            {
                string SortString = Session["SortColumn"].ToString() + " " + Session["SortDirection"].ToString();


                // query the Teams Table using EF and LINQ
                var Teams = (from allTeams in db.teams
                             where allTeams.team_id == 1
                             select allTeams);

                var Teams2 = (from allTeams in db.teams
                              where allTeams.team_id == 2
                              select allTeams);

                // bind the result to the GridView
                GridView1.DataSource = Teams.AsQueryable().ToList();
                GridView1.DataBind();
                GridView2.DataSource = Teams.AsQueryable().ToList();
                GridView2.DataBind();
                GridView3.DataSource = Teams.AsQueryable().ToList();
                GridView3.DataBind();
                GridView4.DataSource = Teams.AsQueryable().ToList();
                GridView4.DataBind();

                GridView5.DataSource = Teams2.AsQueryable().ToList();
                GridView5.DataBind();
                GridView6.DataSource = Teams2.AsQueryable().ToList();
                GridView6.DataBind();
                GridView7.DataSource = Teams2.AsQueryable().ToList();
                GridView7.DataBind();
                GridView8.DataSource = Teams2.AsQueryable().ToList();
                GridView8.DataBind();

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

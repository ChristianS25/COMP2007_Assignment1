using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CR_Assignment1
{
    public partial class Default : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void SetActivePage()
        {
            switch (Page.Title)
            {
                case "Home":
                    home.Attributes.Add("class", "active");
                    break;
                case "Sport1":
                    sport1.Attributes.Add("class", "active");
                    break;
                case "Sport2":
                    sport2.Attributes.Add("class", "active");
                    break;
                case "Sport3":
                    sport3.Attributes.Add("class", "active");
                    break;
                case "Sport4":
                    sport4.Attributes.Add("class", "active");
                    break;
                case "Register":
                    register.Attributes.Add("class", "active");
                    break;
                case "Login":
                    login.Attributes.Add("class", "active");
                    break;
            }
        }
    }
}
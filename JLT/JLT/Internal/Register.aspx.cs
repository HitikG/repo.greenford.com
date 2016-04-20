using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JLTInternal
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                //Fill Years
                for (int i = 2013; i <= 2020; i++)
                {
                    Year.Items.Add(i.ToString());
                }
                Year.Items.FindByValue(System.DateTime.Now.Year.ToString()).Selected = true;  //set current year as selected

                //Fill Months
                for (int i = 1; i <= 12; i++)
                {
                    Month.Items.Add(i.ToString());
                }
                Month.Items.FindByValue(System.DateTime.Now.Month.ToString()).Selected = true; // Set current month as selected

                //Fill days
                FillDays();
            }
        }
        public void FillDays()
        {
            Day.Items.Clear();
            //getting numbner of days in selected month & year
            int noofdays = DateTime.DaysInMonth(Convert.ToInt32(Year.SelectedValue), Convert.ToInt32(Month.SelectedValue));

            //Fill days
            for (int i = 1; i <= noofdays; i++)
            {
                Day.Items.Add(i.ToString());
            }
            Day.Items.FindByValue(System.DateTime.Now.Day.ToString()).Selected = true;// Set current date as selected
        }

        protected void BtnAdd_Click(object sender, EventArgs e)
        {
           
        }        
    }
}


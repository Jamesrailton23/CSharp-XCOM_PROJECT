using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace XCOM_PROJECT
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
                previous_calendar.SelectedDate = DateTime.Now.Date;
                new_calender.SelectedDate = DateTime.Now.Date.AddDays(14);
                end_calendar.SelectedDate = DateTime.Now.Date.AddDays(21);
            }

        }

        protected void button_assign_Click(object sender, EventArgs e)
        {
            TimeSpan total_duration = end_calendar.SelectedDate.Subtract(new_calender.SelectedDate);
            double total_cost = total_duration.TotalDays * 500.0;

            if (total_duration.TotalDays > 21)
            {
                total_cost += 1000.0;
            }

            label_result.Text = String.Format(" The asssignment of {0} to assignment {1} is authorized. the buget total is {2:C} ",
            codename_textbox.Text,
            assignment_textbox.Text,
            total_cost);

            TimeSpan time_between_assignments = new_calender.SelectedDate.Subtract(previous_calendar.SelectedDate);
            DateTime earliest_new_assignment_date = previous_calendar.SelectedDate.AddDays(14);

            if (time_between_assignments.TotalDays < 14)
            {
                label_result.Text = "an error has occured";
                new_calender.SelectedDate = earliest_new_assignment_date;
                new_calender.VisibleDate = earliest_new_assignment_date;
            }
            if (total_cost < 0)
            {
                label_result.Text = "an error has occured";
            }


        }
    }
}
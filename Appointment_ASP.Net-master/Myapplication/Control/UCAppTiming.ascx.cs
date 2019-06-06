using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Myapplication
{
    public partial class UCAppTiming : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                loadVals();
            }
        }
        protected void loadVals()
        {
            DateTime startTime, endTime;
            string formatedTime;
            startTime = DateTime.ParseExact(("08:00"), ("HH:mm"), null);
            endTime = DateTime.ParseExact("18:00", "HH:mm", null);
            DateTime timeVal = startTime;
            // Fill appointmrnt start and end time dropDownLists
            for (int i = 0; timeVal <= endTime; i++)
            {
                formatedTime = timeVal.ToString("HH:mm");
                ddlStartTime.Items.Add(formatedTime);
                ddlEndTime.Items.Add(formatedTime);
                timeVal = timeVal.AddMinutes(15);
            }
        }
        public string txtApptDateTime;

            protected void GetAppointment()
            {
                if(IsPostBack)
                txtApptDateTime = Calendar1.SelectedDate.ToShortDateString() + " " + ddlStartTime.SelectedValue.ToString() + " " + ddlEndTime.SelectedValue.ToString();

            }

            protected void Calendar1_SelectionChanged(object sender, EventArgs e)
            {
                GetAppointment();
            }

            protected void ddlStartTime_TextChanged(object sender, EventArgs e)
            {
                txtApptDateTime = Server.HtmlEncode(ddlStartTime.SelectedValue.ToString());
            
        }

            protected void ddlEndTime_TextChanged(object sender, EventArgs e)
            {
                GetAppointment();
            }

            protected void ddlEndTime_SelectedIndexChanged(object sender, EventArgs e)
            {
                txtApptDateTime = Server.HtmlEncode(ddlEndTime.SelectedValue.ToString());
            }

           


        }
    }

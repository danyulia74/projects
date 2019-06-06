using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Myapplication
{
    public partial class diagnostic : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string patientName = Convert.ToString(Session["Name"]);
            lblPatientName.Text = patientName;
            if (!IsPostBack)
            {
                //Boolean standTime =(Boolean)Session["Standtime"];
                //standTime = !standTime;
                //Session["StandTime"] = standTime;
                //if (standTime)
                //  lblRefresh.Text = DateTime.Now.ToString("HH:mm:ss");
                //}
                //else
                //{
                    lblRefresh.Text = DateTime.Now.ToString("hh:mm:ss tt");
                //    System.Threading.Thread.Sleep(250);
                //Response.Redirect("Default.aspx");
            }


        }

        //protected void btnRefresh_Click(object sender, EventArgs e)
        //{
        //    lblRefresh.Text = DateTime.Now.ToLongTimeString();
        //}

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}
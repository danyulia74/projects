using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Myapplication
{
    public partial class Consultation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string LName = Convert.ToString(Request.Form["ctl00$masterBodyCPH$txtLastName"]);
            string FName = Convert.ToString(Request.Form["ctl00$masterBodyCPH$txtFirstName"]);
            string Height = Convert.ToString(Request.Form["ctl00$masterBodyCPH$txtHeight"]);
            string Weight = Convert.ToString(Request.Form["ctl00$masterBodyCPH$txtWeight"]);

            lblPutName.Text = LName + " " + FName;
            if (!string.IsNullOrEmpty(Height))
            {
                txtHeightNotTaken.Text = Convert.ToString(Height);
                txtHeightNotTaken.ReadOnly = true;
            }
            if (!string.IsNullOrEmpty(Weight))
            {
                txtWeightNotTaken.Text = Convert.ToString(Weight);
                txtWeightNotTaken.ReadOnly = true;
            }


        }

        protected void chkWeightNotTaken_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void ibtnNew_Consultation_Click(object sender, ImageClickEventArgs e)
        {
            ContentPlaceHolder masterCPH = (ContentPlaceHolder)this.Master.FindControl("masterBodyCPH");
            Label lblConstDate = new Label();
            TextBox txtConstDate = new TextBox();
            lblConstDate.Text = "Consultation/DateTime";
            txtConstDate.Text = DateTime.Now.ToString();
            //Controls.Add(lblConstDate); //works with single page
            //Controls.Add(txtConstDate);  //works with single page
            masterCPH.Controls.Add(lblConstDate);  //adding controls to content place holder
            masterCPH.Controls.Add(txtConstDate);   //adding controls to content place holder


        }
    }
}
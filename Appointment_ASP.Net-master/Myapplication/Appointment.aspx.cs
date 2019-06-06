using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Myapplication
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (PreviousPage != null)
            {
                // lblPatientName =((TextBox)PreviousPage.FindControl("txtLastName")).Text;
                ContentPlaceHolder MasterCPH = (ContentPlaceHolder)PreviousPage.Master.FindControl("masterBodyCPH");
                TextBox transLN = (TextBox)MasterCPH.FindControl("txtLastName");
                //or String lastName = ((TextBox)MasterCPH.FindControl("txtLastName")
                TextBox transFN = (TextBox)MasterCPH.FindControl("txtFirstName");
                lblPatientName.Text = transLN.Text + " " + transLN.Text;
            }
            // Loading values to ddls
            if (!IsPostBack)
                loadVals();

        }
          
        protected void loadVals()
        {

            // Fill appointment physician
            List<string> Doctors = new List<string>() { "", "Dr. Morissette", "Dr. Binette", "Dr. Lomi" };
            foreach (string doc in Doctors)
            {
                ddlPhysician.Items.Add(doc);
            }
        }
        protected void ValCustmAppintment_Server(object sender, ServerValidateEventArgs e)
        {
            e.IsValid = chkConfirmed.Checked;
        }

        protected void ibtnConfirm_Click(object sender, ImageClickEventArgs e)
        {
            txtApptDateTimeSh.Text = UCAppTiming.txtApptDateTime;
        }

    }

}


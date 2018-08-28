using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspNetWebcontrols
{
    public partial class InputControls : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //lblname.Text = "Test";//label properties
           // lblname.Visible = false;
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            lbloutput.Text ="Hi.. this is button click";
        }

        protected void chk_CheckedChanged(object sender, EventArgs e)
        {
           lbloutput.Text ="Hi.. this is checkbox changed event";
        }

        protected void lnkclick_Click(object sender, EventArgs e)
        {
           lbloutput.Text ="Hi.. this is link button click";
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
           lbloutput.Text ="Hi.. this is dropdown selected Index changed";
        }

        protected void lstbox_SelectedIndexChanged(object sender, EventArgs e)
        {
           lbloutput.Text ="Hi.. this is listbox selected Index changed";
        }
    }
}
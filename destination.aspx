using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLogicLayer;
using System.Data;

namespace PresentationLayer
{
    public partial class viewdestinationpoint : System.Web.UI.Page
    {
        private void FillDpoints()
        {
            BusinessLogicLayer.BusinessLogicLayer objbll = new BusinessLogicLayer.BusinessLogicLayer();
            DataSet ds = objbll.ViewDpointss();
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack == false)
            {
                FillDpoints();
            }
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            FillDpoints();
            /* filling the destination points everytime a new page is changed*/
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName.ToString() == "cmddelete") /* if-else for update and delete functionalities with label objects*/
            {
                int rowindex = Convert.ToInt32(e.CommandArgument.ToString());
                Response.Write("Delete button was clicked.");
                GridViewRow row = (GridViewRow)GridView1.Rows[rowindex];
                Label l = (Label)row.FindControl("Label1");
                BusinessObjects.BusinessObjects objbo = new BusinessObjects.BusinessObjects();
                objbo.Did = l.Text;
                BusinessLogicLayer.BusinessLogicLayer objbll = new BusinessLogicLayer.BusinessLogicLayer();
                int i = objbll.Deletedestinationpoint(objbo);
                FillDpoints();
            }
            else if(e.CommandName.ToString() == "cmdupdate")
            {
                int rowindex = Convert.ToInt32(e.CommandArgument.ToString());
                Response.Write("Update button was clicked.");
                GridViewRow row = (GridViewRow)GridView1.Rows[rowindex];
                Label l = (Label)row.FindControl("Label1");
                BusinessObjects.BusinessObjects objbo = new BusinessObjects.BusinessObjects();
                objbo.Did = l.Text;
                Label l1 = (Label)row.FindControl("Label2");
                objbo.Dname = l1.Text;
                Session["did"] = l.Text;
                Session["dname"] = l1.Text;
                Response.Redirect("updatedpoints.aspx");
            }
        }
    }
}
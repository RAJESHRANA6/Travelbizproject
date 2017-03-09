using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PresentationLayer
{
    public partial class Addbusdestinationpoint : System.Web.UI.Page
    {
        private void FillDpoints()
        {
            BusinessLogicLayer.BusinessLogicLayer objbll = new BusinessLogicLayer.BusinessLogicLayer();
            DataSet ds = objbll.ViewDpointss();
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }/* fill the destination point using objects of busines logic and business object layers*/
        private void BindSvno()
        {
            BusinessLogicLayer.BusinessLogicLayer objbll = new BusinessLogicLayer.BusinessLogicLayer();
            SqlDataReader dr = objbll.Bindserviceno();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    string svno = dr[0].ToString();
                    string fplace = dr[1].ToString();
                    string tplace = dr[2].ToString();
                    string s = svno + "/" + fplace + "/" + tplace;
                    DropDownList1.Items.Add(s);
                }
            }
        }/*Splits the service no, from place and to place using "/" in the dropdown list*/        
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack == false)
            {
                BindSvno();
                FillDpoints();
            }
        }
        /* on page load the functions bins svno and filldpoints are called*/
        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            FillDpoints();
        }
        /*When page index is changed the filldpoints function is called in order to display the details without fail*/
    }
}
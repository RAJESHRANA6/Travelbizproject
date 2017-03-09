using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLogicLayer;
using BusinessObjects;
namespace PresentationLayer
{
    public partial class Updatedpoints : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e) /*pageload method pass two argument*/
        {
            if(IsPostBack == false)           /*check the condition*/
            {
                TextBox1.Text = Session["did"].ToString();
                TextBox2.Text = Session["dname"].ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            BusinessObjects.BusinessObjects objbo = new BusinessObjects.BusinessObjects();
            objbo.Did = TextBox1.Text;
            objbo.Dname = TextBox2.Text;
            BusinessLogicLayer.BusinessLogicLayer objbll = new BusinessLogicLayer.BusinessLogicLayer();
            int i = objbll.Updatedestination(objbo);
            if(i==1)
            {
                Response.Write("Update");
            }
        }/*Update button event handler which calls the updatedestination function and update the values of did and dname*/

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
        }
        /*clicking the cancels button cla=ears all the textboxes*/
    }
}
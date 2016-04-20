using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JLTInternal
{
    public partial class AddMember : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {

            if (TbFirst.Text == "" || TbLast.Text == "" || TbForm.Text == "" || TbEmail.Text == "" || TbImage.Text == "" || TbDescription.Text == "")
            {
                LblError.Text = "You haven't filled in all boxes.";
            }
            else
            {
                PowerToInnovate Power = new PowerToInnovate();
                string First = Power.FirstLetterToUpper(TbFirst.Text);
                string Last = Power.FirstLetterToUpper(TbLast.Text);
                Power.AddMember(First, Last, TbForm.Text.ToUpper(), TbImage.Text, TbEmail.Text, TbDescription.Text);
                TbFirst.Text = "";
                TbLast.Text = "";
                TbForm.Text = "";
                TbEmail.Text = "";
                TbImage.Text = "";
                TbDescription.Text = "";
                LblError.Text = "New Member Added!";
                Response.AddHeader("REFRESH", "4;URL=Members.aspx");
            }
        }
    }
}
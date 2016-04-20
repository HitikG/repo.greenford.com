using System;
using System.Collections.Generic;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JLTInternal
{
    public partial class Warnings : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                string Connection = ConfigurationManager.ConnectionStrings["DsJLT"].ConnectionString;
                using (SqlConnection Con = new SqlConnection(Connection))
                {
                    using (SqlCommand Cmd = new SqlCommand("SELECT FirstName FROM Members"))
                    {
                        Cmd.CommandType = CommandType.Text;
                        Cmd.Connection = Con;
                        Con.Open();
                        DlName.DataSource = Cmd.ExecuteReader();
                        DlName.DataTextField = "FirstName";
                        DlName.DataValueField = "FirstName";
                        DlName.DataBind();
                        Con.Close();
                    }
                }
                DlName.Items.Insert(0, new ListItem("--Select Member--", "0"));
            }
            if (!this.IsPostBack)
            {
                string Connection = ConfigurationManager.ConnectionStrings["DsJLT"].ConnectionString;
                using (SqlConnection Con = new SqlConnection(Connection))
                {
                    using (SqlCommand Cmd = new SqlCommand("SELECT Severity FROM Severity"))
                    {
                        Cmd.CommandType = CommandType.Text;
                        Cmd.Connection = Con;
                        Con.Open();
                        DlSeverity.DataSource = Cmd.ExecuteReader();
                        DlSeverity.DataTextField = "Severity";
                        DlSeverity.DataValueField = "Severity";
                        DlSeverity.DataBind();
                        Con.Close();
                    }
                }
                DlSeverity.Items.Insert(0, new ListItem("--Select Severity--", "0"));
            }
        }

        protected void BtnSearch_Click(object sender, EventArgs e)
        {
            PnlSearch.Visible = true;
            PnlAdd.Visible = false;
            PnlButtons.Visible = false;
        }

        protected void BtnAdd_Click(object sender, EventArgs e)
        {
            PnlAdd.Visible = true;
            PnlSearch.Visible = false;
            PnlButtons.Visible = false;
        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            if (Convert.ToString(DlName.SelectedItem).StartsWith("-") || Convert.ToString(DlSeverity.SelectedItem).StartsWith("-"))
            {
                LblError.Text = "You need to select all fields.";
            }
            else if (TbDescription.Text == "")
            {
                LblError.Text = "Add a description.";
            }
            else
            {
                PowerToInnovate Power = new PowerToInnovate();
                string Date = Cal.SelectedDate.ToString();
                Power.AddWarning(Convert.ToString(DlName.SelectedItem), Convert.ToString(DlSeverity.SelectedItem), TbDescription.Text, Date);
                LblError.Text = "Warning Added";
                Response.AddHeader("REFRESH", "2;URL=Warnings.aspx");
            }
        }


    }
}

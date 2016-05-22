using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.Linq;
using System.Web;
using System.Data;

namespace JLTInternal
{
    public class Classes
    {
        public static string ReadDB()
        {
            string Return = "";
            Return += "<div class ='members'>";

            string MemberQuery = "SELECT * FROM Members"; //Our Query To Insert
            SqlConnection MemberConnect = new SqlConnection(ConfigurationManager.ConnectionStrings["DsJLT"].ConnectionString); //Declaring Our Connection String
            SqlCommand Members = new SqlCommand(MemberQuery, MemberConnect); //Create A Command To Add To The Database

            using (MemberConnect)
            {
                MemberConnect.Open(); //Opens The Connection
                using (SqlDataReader reader = Members.ExecuteReader())
                {
                    while (reader != null && reader.Read())
                    {
                        Return += "<div class='Member'>" + reader["FirstName"].ToString() + "</div><br />" ;
                    }
                }

            }
            MemberConnect.Close();//Closes The Connection

            return Return;
        }
    }
}
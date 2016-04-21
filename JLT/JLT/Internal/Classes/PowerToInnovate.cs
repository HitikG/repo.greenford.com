using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.Linq;
using System.Web;

namespace JLTInternal
{
    public class PowerToInnovate
    {
        public class Links
        {
            public string FirstName { get; set; }
            public string LastName { get; set; }
        }
        public void AddMember(string FirstName, string LastName, string Form, string Image, string Email, string Description)
        {
            string MemberQuery = "INSERT INTO Members (FirstName, LastName, Form, Image, Email, Description) VALUES (@FirstName, @LastName, @Form, @Image, @Email, @Description)"; //Our Query To Insert
            SqlConnection MemberConnect = new SqlConnection(ConfigurationManager.ConnectionStrings["DsJLT"].ConnectionString); //Declaring Our Connection String
            SqlCommand MemberCmd = new SqlCommand(MemberQuery, MemberConnect); //Create A Command To Add To The Database

            MemberCmd.Parameters.AddWithValue("@FirstName", FirstName); //Adds FirstName To The Database
            MemberCmd.Parameters.AddWithValue("@LastName", LastName); //Adds LastName To The Database
            MemberCmd.Parameters.AddWithValue("@Form", Form); //Adds Form To The Database
            MemberCmd.Parameters.AddWithValue("@Image", Image); //Adds Image To The Database
            MemberCmd.Parameters.AddWithValue("@Email", Email); //Adds Email To The Database
            MemberCmd.Parameters.AddWithValue("@Description", Description); //Adds Description

            MemberConnect.Open(); //Opens The Connection
            MemberCmd.ExecuteNonQuery();//Executes
            MemberConnect.Close();//Closes The Connection
        }
        public string FirstLetterToUpper(string str)
        {
            if (str == null)
                return null;

            if (str.Length > 1)
                return char.ToUpper(str[0]) + str.Substring(1);

            return str.ToUpper();
        }
        public void AddWarning(string CommittedBy, string Severity, string Description, string Occurred)
        {

            string MemberQuery = "INSERT INTO Warnings (CommittedBy, Severity, Description, Occurred) VALUES (@CommittedBy, @Severity, @Description, @Occurred)"; //Our Query To Insert
            SqlConnection MemberConnect = new SqlConnection(ConfigurationManager.ConnectionStrings["DsJLT"].ConnectionString); //Declaring Our Connection String
            SqlCommand MemberCmd = new SqlCommand(MemberQuery, MemberConnect); //Create A Command To Add To The Database

            MemberCmd.Parameters.AddWithValue("@CommittedBy", CommittedBy); //Adds FirstName To The Database
            MemberCmd.Parameters.AddWithValue("@Severity", Severity);
            MemberCmd.Parameters.AddWithValue("@Description", Description); //Adds FirstName To The Database
            MemberCmd.Parameters.AddWithValue("@Occurred", Occurred); //Adds Form To The Database

            MemberConnect.Open(); //Opens The Connection
            MemberCmd.ExecuteNonQuery();//Executes
            MemberConnect.Close();//Closes The Connection
        }
        public void AddAttended(int ID, int Attended, int Total)
        {

            string MemberQuery = "UPDATE Attendance SET Attended = Attended + 1, SET Total = Total +1"; //Our Query To Insert
            SqlConnection MemberConnect = new SqlConnection(ConfigurationManager.ConnectionStrings["DsJLT"].ConnectionString); //Declaring Our Connection String
            SqlCommand MemberCmd = new SqlCommand(MemberQuery, MemberConnect); //Create A Command To Add To The Database
            
            MemberConnect.Open(); //Opens The Connection
            MemberCmd.ExecuteNonQuery();//Executes
            MemberConnect.Close();//Closes The Connection
        }
    }
}
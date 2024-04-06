using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Threading.Tasks;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Xml.Linq;

namespace SecureCryptApp
{
    public class Connect
    {
        private SqlConnection objSqlConnection;

        [Obsolete]
        public Connect()
        {
            objSqlConnection = null;
            objSqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
        }

        public int RegisterUser(string Name, string EmailId, string Password, string APIKey, int Userid)
        {
            string query = "INSERT INTO Users (Name, Email,Password,APIKey,Userid) VALUES ( @Name,@Email, @Password,@APIKey,@UserId)";
            SqlCommand command = new SqlCommand(query, objSqlConnection);
            command.Parameters.AddWithValue("@Name", Name); // Replace with your ID generation logic
            command.Parameters.AddWithValue("@Email", EmailId);
            command.Parameters.AddWithValue("@Password", Password);
            command.Parameters.AddWithValue("@APIKey", APIKey);
            command.Parameters.AddWithValue("@UserId", Userid);
            
            objSqlConnection.Open();
            int rowsAffected = command.ExecuteNonQuery();
            return rowsAffected;
        }
        public DataSet Getkeys(string emailid)
        {
            DataSet ds = new DataSet();
            string query = "select * from users where Email =@EmailId";
            SqlCommand command = new SqlCommand(query, objSqlConnection);
            command.Parameters.AddWithValue("@EmailId", emailid);
            SqlDataAdapter sda = new SqlDataAdapter(command);
            sda.Fill(ds);
            return ds;

        }

        public DataSet SignIn(string Email,string password)
        {
            DataSet ds = new DataSet();
            SqlCommand cmd = new SqlCommand("SignIn", objSqlConnection);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Email", Email);
            cmd.Parameters.AddWithValue("@Password", password);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            sda.Fill(ds);
            return ds;

        }

        public DataSet Count()
        {
            DataSet ds = new DataSet();
            string query = "Exec count";
            SqlCommand command = new SqlCommand(query, objSqlConnection);
            SqlDataAdapter sda = new SqlDataAdapter(command);
            sda.Fill(ds);
            return ds;
        }


        public int RaiseQuery(string name,string email,string subject,string message)
        {
            string query = "INSERT INTO contact (Name, Email,Subject,Message) VALUES ( @Name,@Email,@Subject,@Message)";
            SqlCommand command = new SqlCommand(query, objSqlConnection);
            command.Parameters.AddWithValue("@Name", name); 
            command.Parameters.AddWithValue("@Email", email);
            command.Parameters.AddWithValue("@Subject", subject);
            command.Parameters.AddWithValue("@Message", message);
          
            objSqlConnection.Open();
            int rowsAffected = command.ExecuteNonQuery();
            return rowsAffected;
        }

        public bool SendMail(string ToMail, string Subject, string MailBody)
        {
            try
            {
                MailMessage mailMessage = new MailMessage();
                mailMessage.From = new MailAddress(ConfigurationManager.AppSettings["LocalEmailAddress"]);
                mailMessage.IsBodyHtml = true;
                mailMessage.To.Add(new MailAddress(ToMail));
                mailMessage.Subject = Subject;
                mailMessage.Body = MailBody;

                // try to add the app password due to security issues google doesnt allow normal mail id and password
                SmtpClient smtp = new SmtpClient();
                smtp.Host = ConfigurationManager.AppSettings["Host"];
                smtp.EnableSsl = Convert.ToBoolean(ConfigurationManager.AppSettings["EnableSsl"]);
                System.Net.NetworkCredential NetworkCred = new System.Net.NetworkCredential();
                NetworkCred.UserName = ConfigurationManager.AppSettings["LocalEmailAddress"];
                NetworkCred.Password = ConfigurationManager.AppSettings["Password"];
                smtp.UseDefaultCredentials = true;
                smtp.Credentials = NetworkCred;
                smtp.Port = int.Parse(ConfigurationManager.AppSettings["Port"]);

                smtp.Send(mailMessage);

                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
        }
    }
}
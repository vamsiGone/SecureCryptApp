using Microsoft.SqlServer.Server;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SecureCryptApp
{
    public partial class Index : System.Web.UI.Page
    {
        [Obsolete]
        Connect Con = new Connect();
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["User"] = null;
            Session["Apikey"] = null;
        }

        [Obsolete]
        protected void Sign_In_Click(object sender, EventArgs e)
        {
            string Email, Password;
            Email = Sign_Email.Text;
            Password=Sign_Password.Text;

            Sign_Email.Text = "";
            Sign_Password.Text = "";

            using (DataSet ds = Con.SignIn(Email, Password))
            {
                if (ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
                {
                    string status = (ds.Tables[0].Rows[0]["status"].ToString());
                    if (status== "1")
                    {
                        using(DataSet key = Con.Getkeys(Email))
                        {
                            if (key.Tables.Count > 0 && key.Tables[0].Rows.Count > 0)
                            {
                                Session["User"] = key.Tables[0].Rows[0]["Name"].ToString();
                                Session["Apikey"] = key.Tables[0].Rows[0]["APIkey"].ToString();
                                Session["Userid"] = key.Tables[0].Rows[0]["Userid"].ToString();

                            }
                        }
                        Response.Redirect("Profile.aspx");
                    }
                    else if (status == "2")
                    {
                        ScriptManager.RegisterStartupScript(this.Page, GetType(), "AlertMessage", "$(function(){AlertMessage('error','Invalid Password')});", true);
                        return;
                    }
                    else
                    {
                        ScriptManager.RegisterStartupScript(this.Page, GetType(), "AlertMessage", "$(function(){AlertMessage('error','Account Doesn\'t Exist, Please Sign Up')});", true);
                        return;
                    }
                }
            }
        }

        [Obsolete]
        protected void Register_Click(object sender, EventArgs e)
        {
            String Name,Email,Password, APIkey;
            int userid = 1;

            Name = Join_Name.Text;
            Email= Join_Email.Text;
            Password=Join_Password.Text;
            APIkey = RandomString(15);

            using (DataSet ds = Con.Count())
            {
                if (ds.Tables.Count > 0 && ds.Tables[1].Rows.Count > 0)
                {
                    string count = ds.Tables[1].Rows[0]["count"].ToString();
                    if (count == "0")
                    {
                        userid = 1;
                    }
                    else
                    {
                        userid = Convert.ToInt32(count) + 1;
                    }
                    
                }
            }
            Join_Name.Text = "";
            Join_Email.Text = "";
            Join_Password.Text = "";
            Join_CPassword.Text = "";

            using (DataSet ds = Con.SignIn(Email, Password))
            {
                if (ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
                {
                    string status = (ds.Tables[0].Rows[0]["status"].ToString());
                    if (status == "1" || status == "2")
                    {
                        ScriptManager.RegisterStartupScript(this.Page, GetType(), "AlertMessage", "$(function(){AlertMessage('error','Email Already Exists..!')});", true);
                        return;
                    }
                }

            }

            int rowsAffected = Con.RegisterUser(Name, Email, Password, APIkey, userid);

            if (rowsAffected > 0)
            {
                ScriptManager.RegisterStartupScript(this.Page, GetType(), "AlertMessage", "$(function(){AlertMessage('success','Registered Successfully')});", true);
                return;
            }
            else
            {
                ScriptManager.RegisterStartupScript(this.Page, GetType(), "AlertMessage", "$(function(){AlertMessage('error','Something went wrong, try again')});", true);
                return;
            }
            

        }

        [Obsolete]
        protected void RaiseQuery_Click(object sender, EventArgs e)
        {
            String Name, Email, Subject, Message;

            Name = Cont_Name.Text;
            Email= Cont_Email.Text;
            Subject= Cont_Subject.Text;
            Message= Cont_Message.Text;

            Cont_Email.Text = "";
            Cont_Message.Text = "";
            Cont_Name.Text = "";
            Cont_Subject.Text = "";

            int rowsaffected = Con.RaiseQuery(Name, Email, Subject, Message);
            if (rowsaffected > 0)
            {
                string Body = "<h2>Dear " + Name + ",</h2><br/><br/><p>Your complaint has been successfully registered.<br/> If you have any further inquiries, please feel free to contact us.</p><br/><br/><p>Thanks & Regards,<br/><br/>Secure Crypt Team.</p>";

                bool flag = Con.SendMail(Email, Subject, Body);
                if (flag)
                {
                    ScriptManager.RegisterStartupScript(this.Page, GetType(), "AlertMessage", "$(function(){AlertMessage('success','Complaint Registered Successfully')});", true);
                    return;
                }
                
            }
            else
            {
                ScriptManager.RegisterStartupScript(this.Page, GetType(), "AlertMessage", "$(function(){AlertMessage('error','Something went wrong, try again')});", true);
                return;
            }
             
        }

        public static string RandomString(int length)
        {
            const string valid = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890@$#*";
            StringBuilder res = new StringBuilder();
            using (RNGCryptoServiceProvider rng = new RNGCryptoServiceProvider())
            {
                byte[] uintBuffer = new byte[sizeof(uint)];

                while (length-- > 0)
                {
                    rng.GetBytes(uintBuffer);
                    uint num = BitConverter.ToUInt32(uintBuffer, 0);
                    res.Append(valid[(int)(num % (uint)valid.Length)]);
                }
            }

            return res.ToString();
        }
    }
}
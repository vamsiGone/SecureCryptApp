using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Net.Http;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace SecureCryptApp
{
    public partial class Profile : System.Web.UI.Page
    {
        [Obsolete]
        Connect Con = new Connect();

        public string user="", apikey="";
        public int userid;


        [Obsolete]
        protected void Page_Load(object sender, EventArgs e)
        {
            user= Session["user"].ToString();
            apikey = Session["Apikey"].ToString();
            string uuserid = Session["Userid"].ToString();
            userid = Convert.ToInt32(uuserid);

            if ( user == null || user=="")
            {
                Response.Redirect("Index.aspx");
            }

            if (!IsPostBack)
            {
                BindGrid();
            }
        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            Response.Redirect("Index.aspx");
        }

        [Obsolete]
        protected async void Submit_Click(object sender, EventArgs e)
        {
            string input = Input.Text;
            string secretkey = privatekey.Text;
            string mode = Mode.Text;
            bool isEncrypt = (mode == "Encrypt");

            // Ensure a valid private key is used or generate one securely
            secretkey = !string.IsNullOrEmpty(secretkey) ? secretkey : "aBC@31D4$JDSD572@DSHK#";

            // Create an instance of HttpClient
            using (HttpClient client = new HttpClient())
            {
                // API endpoint URL
                string apiUrl = "http://localhost:5203/SecureCrypt";

                // Prepare data to send to the API
                var data = new
                {
                    InputValue = input,
                    PrivateKey = secretkey,
                    IsEncrypt = isEncrypt
                };

                try
                {
                    // Convert data to JSON 
                    var content = new StringContent(Newtonsoft.Json.JsonConvert.SerializeObject(data), System.Text.Encoding.UTF8, "application/json");

                    //get from web.config
                    string APIKEY = ConfigurationManager.AppSettings["Apikey"];
                    string APIEMAIL = ConfigurationManager.AppSettings["ApiEmail"];

                    // Add API key to request headers
                    client.DefaultRequestHeaders.Add("APIKEY", APIKEY);
                    client.DefaultRequestHeaders.Add("EMAIL", APIEMAIL);

                    // Call the API asynchronously
                    HttpResponseMessage response = await client.PostAsync(apiUrl, content);

                    // Check if the response is successful
                    if (response.IsSuccessStatusCode)
                    {
                        // Read the response content
                        string result = await response.Content.ReadAsStringAsync();

                        // Handle the result from the API (e.g., display it in a label)
                        Output.Text = result;
                        Input.Text = "";

                        Con.InsertLog(input, result, secretkey, mode, userid);
                        BindGrid();
                    }
                    else
                    {
                        Output.Text = "Error: " + response.ReasonPhrase;
                        BindGrid();
                    }
                }
                catch (Exception ex)
                {
                    Output.Text = "Exception: " + ex.Message;
                }
            }

        }

        [Obsolete]
        protected void BindGrid()
        {
            using (DataSet datagrid = Con.History(userid))
            {
                if (datagrid != null && datagrid.Tables.Count > 0 && datagrid.Tables[0].Rows.Count > 0)
                {
                    GridRepeat.Visible = true;
                    GridRepeat.DataSource = datagrid;
                    GridRepeat.DataBind(); 
                }
                else
                {
                    GridRepeat.Visible = false;
                }
            }
        }
        protected void Qpkey_SelectedIndexChanged(object sender, EventArgs e)
        {
            string value = Qpkey.SelectedValue;
          
                if(value=="Yes")
                {
                    pkey_group.Visible=true;
                }
                else
                {
                    pkey_group.Visible=false;
                }
            
        }
    }
}
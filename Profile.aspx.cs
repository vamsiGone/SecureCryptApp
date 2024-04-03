using Newtonsoft.Json;
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

        public string user = "", apikey = "";
        public int userid;


        [Obsolete]
        protected void Page_Load(object sender, EventArgs e)
        {
            user = Session["user"].ToString();
            apikey = Session["Apikey"].ToString();
            string uuserid = Session["Userid"].ToString();
            userid = Convert.ToInt32(uuserid);

            if (user == null || user == "")
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
                string apiUrl = ConfigurationManager.AppSettings["ApiUrl"];

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
        protected async void BindGrid()
        {
            // Create an instance of HttpClient
            using (HttpClient client = new HttpClient())
            {
                // API endpoint URL
                string apiUrl = ConfigurationManager.AppSettings["ApiUrlHistory"];

                // Prepare data to send to the API
                var data = new { userId = userid };

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
                        // Deserialize the JSON response to a list of HistoryEntry objects
                        var con = await response.Content.ReadAsStringAsync();
                        var historyList = JsonConvert.DeserializeObject<List<HistoryEntry>>(con);

                        // Convert the list to a DataTable
                        DataTable dataTable = new DataTable("History");
                        dataTable.Columns.Add("Sno", typeof(int));
                        dataTable.Columns.Add("Id", typeof(int));
                        dataTable.Columns.Add("PlainText", typeof(string));
                        dataTable.Columns.Add("EncryptRDecryptText", typeof(string));
                        dataTable.Columns.Add("privatekey", typeof(string));
                        dataTable.Columns.Add("Mode", typeof(string));
                        dataTable.Columns.Add("UserId", typeof(int));

                        foreach (var entry in historyList)
                        {
                            dataTable.Rows.Add(entry.Sno, entry.Id, entry.PlainText, entry.EncryptRDecryptText, entry.privatekey, entry.Mode, entry.UserId);
                        }

                        // Create a DataSet and add the DataTable to it
                        DataSet dataSet = new DataSet();
                        dataSet.Tables.Add(dataTable);


                        if (dataSet != null && dataSet.Tables.Count > 0 && dataSet.Tables[0].Rows.Count > 0)
                        {
                            GridRepeat.Visible = true;
                            GridRepeat.DataSource = dataSet;
                            GridRepeat.DataBind();
                        }
                        else
                        {
                            GridRepeat.Visible = false;
                            ScriptManager.RegisterStartupScript(this.Page, GetType(), "AlertMessage", "$(function(){AlertMessage('error','No Records Found')});", true);
                            return;
                        }

                    }

                }
                catch (Exception ex)
                {
                    ScriptManager.RegisterStartupScript(this.Page, GetType(), "AlertMessage", "$(function(){AlertMessage('error','" + ex.Message + "')});", true);
                    return;
                }
            }


        }
        protected void Qpkey_SelectedIndexChanged(object sender, EventArgs e)
        {
            string value = Qpkey.SelectedValue;

            if (value == "Yes")
            {
                pkey_group.Visible = true;
            }
            else
            {
                pkey_group.Visible = false;
            }

        }
    }
}
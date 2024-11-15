using System;
using System.Data;
using System.Data.SqlClient;
using System.Text;

namespace Web_page_TechFix
{
    public partial class supplier : System.Web.UI.Page
    {
        // Connection string to the database
        private string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["TechFixDb"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadSupplierProducts();
                LoadChatMessages();
            }
        }

        // Load supplier products into the GridView
        private void LoadSupplierProducts()
        {
            string query = "SELECT pcode, pdesc, bid, cid, price, qty, barcode FROM tblProduct"; // Adjust the table and fields if necessary

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand(query, connection);
                connection.Open();

                using (SqlDataReader reader = command.ExecuteReader())
                {
                    DataTable dt = new DataTable();
                    dt.Load(reader);

                    // Bind the data to the GridView
                    SupplierProductGrid.DataSource = dt;
                    SupplierProductGrid.DataBind();
                }
            }
        }

        // Handle sending chat message
        protected void SendMessage(object sender, EventArgs e)
        {
            string message = txtMessage.Text.Trim();

            if (!string.IsNullOrEmpty(message))
            {
                // SQL query to insert message and timestamp
                string query = "INSERT INTO ChatMessages (Message, Timestamp) VALUES (@Message, @Timestamp)";


                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    SqlCommand command = new SqlCommand(query, connection);
                    command.Parameters.AddWithValue("@Message", message);
                    command.Parameters.AddWithValue("@Timestamp", DateTime.Now);

                    connection.Open();
                    command.ExecuteNonQuery();
                }

                // Clear the message input and reload chat messages
                txtMessage.Text = string.Empty;
                LoadChatMessages();
            }
        }

        // Load chat messages from the database
        private void LoadChatMessages()
        {
            string query = "SELECT Message, Timestamp FROM ChatMessages ORDER BY Timestamp ASC";
            StringBuilder chatContent = new StringBuilder();

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand(query, connection);
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();

                // Build the chat content
                while (reader.Read())
                {
                    string message = reader["Message"].ToString();
                    DateTime timestamp = Convert.ToDateTime(reader["Timestamp"]);

                    chatContent.AppendFormat("<div class='chatMessage'><strong>{0}</strong>: {1}</div>", timestamp.ToString("HH:mm:ss"), message);
                }
            }

            // Display the messages in the chatBox div
            chatBox.InnerHtml = chatContent.ToString();
        }
    }
}

using System;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace TECHFIX_PROJECT
{
    public partial class frmNotification : Form
    {
        // Connection string to the database
        private string connectionString = @"Data Source=kalani\SQLEXPRESS;Initial Catalog=TechFix;Integrated Security=True";  

        public frmNotification()
        {
            InitializeComponent();
            LoadChatMessages();  // Load chat messages when the form loads
        }

        // Method to load chat messages
        private void LoadChatMessages()
        {
            string query = "SELECT Id, Message, Timestamp FROM ChatMessages ORDER BY Timestamp ASC"; // Added Id column

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand(query, connection);
                SqlDataAdapter adapter = new SqlDataAdapter(command);
                DataTable dt = new DataTable();

                try
                {
                    connection.Open();
                    adapter.Fill(dt);

                    // Check if DataTable is empty
                    if (dt.Rows.Count == 0)
                    {
                        MessageBox.Show("No messages found in the database.");
                    }

                    // Bind the DataTable to the DataGridView
                    chatMessageGrid.DataSource = dt;  // Assuming chatMessageGrid is your DataGridView control
                }
                catch (SqlException sqlEx)
                {
                    MessageBox.Show("SQL Error: " + sqlEx.Message);
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Error: " + ex.Message);
                }
            }
        }


        // Event handler for cell click (optional)
        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.RowIndex >= 0 && e.ColumnIndex >= 0)
            {
                // Get the clicked row
                DataGridViewRow row = chatMessageGrid.Rows[e.RowIndex];

                // Retrieve the "Message" and "Timestamp" columns (adjust according to your column names)
                string Message = row.Cells["Message"].Value.ToString();
                string Timestamp = row.Cells["Timestamp"].Value.ToString();

                // You can perform any operation here; for example, show a message box with details
                MessageBox.Show($"Message: {Message}\nTimestamp: {Timestamp}", "Chat Message Details", MessageBoxButtons.OK, MessageBoxIcon.Information);

                // Example: you can add more functionality here, such as opening a detail view, updating the message, etc.
            }
        
    }
    }
}

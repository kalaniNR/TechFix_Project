using System;
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.Text;

namespace Web_page_TechFix
{
    public partial class signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // No special code needed for Page_Load unless you have specific logic for this.
        }

        protected void Unnamed7_Click(object sender, EventArgs e)
        {
            // Retrieve values from the TextBox controls
            string id = txtid?.Text; // Use null-conditional to avoid null reference
            string username = txtuser?.Text;
            string email = txtemail?.Text;
            string password = txtpassword?.Text;
            string confirmPassword = txtconpassword?.Text;

            // Check if any of the fields are null or empty (additional validation)
            if (string.IsNullOrEmpty(id) || string.IsNullOrEmpty(username) || string.IsNullOrEmpty(email) ||
                string.IsNullOrEmpty(password) || string.IsNullOrEmpty(confirmPassword))
            {
                lblMessage.Text = "All fields are required.";
                return;
            }

            // Validate if password and confirm password match
            if (password != confirmPassword)
            {
                lblMessage.Text = "Passwords do not match.";  // Show error message
                return;
            }

            // Hash the password before storing it in the database
            string hashedPassword = HashPassword(password);

            // Database connection string
            string connectionString = @"Data Source=KALANI\SQLEXPRESS;Initial Catalog=TechFix;Integrated Security=True";

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string query = "INSERT INTO tblsignup(Id, Username, Email, Password) VALUES (@Id, @Username, @Email, @Password)";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@Id", id);
                cmd.Parameters.AddWithValue("@Username", username);
                cmd.Parameters.AddWithValue("@Email", email);
                cmd.Parameters.AddWithValue("@Password", hashedPassword);

                try
                {
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    // Redirect to login page after successful signup
                    Response.Redirect("login.aspx");
                }
                catch (Exception ex)
                {
                    // Display the error message in case of a failure
                    lblMessage.Text = "Error: " + ex.Message;
                }
            }
        }

        // Helper function to hash the password using SHA-256
        private string HashPassword(string password)
        {
            using (SHA256 sha256 = SHA256.Create())
            {
                byte[] bytes = sha256.ComputeHash(Encoding.UTF8.GetBytes(password));
                StringBuilder builder = new StringBuilder();
                foreach (byte b in bytes)
                {
                    builder.Append(b.ToString("x2")); // Convert each byte to a hexadecimal string
                }
                return builder.ToString();
            }
        }
    }
}

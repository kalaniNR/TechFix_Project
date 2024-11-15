using System;
using System.Web.UI;
using SharedLibrary;

namespace Web_page_TechFix
{
    public partial class login : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            // Retrieve the username, password, and user type
            string username = txtuser.Text.Trim();
            string password = txtpass.Text;
            string userType = ddlUserType.SelectedValue;

            // Validate inputs before further processing
            if (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(password) || string.IsNullOrEmpty(userType))
            {
                lblErrorMessage.Text = "Please fill in all fields.";
                return;
            }

            if (ValidateUser(username, password, userType))
            {
                if (userType == "Supplier")
                {
                    // Redirect to Supplier form (Form1.cs)
                    Response.Redirect("Form1.aspx");  // Update path as needed
                }
                else
                {
                    // Redirect to Admin or Customer home page
                    Response.Redirect("home.aspx");  // Update path accordingly
                }
            }
            else
            {
                // Show error message if validation fails
                lblErrorMessage.Text = "Invalid username, password, or user type.";
            }
        }

        private bool ValidateUser(string username, string password, string userType)
        {
            // Basic password complexity check (add stronger checks as needed)
            if (password.Length < 5)
            {
                lblErrorMessage.Text = "Password must be at least 5 characters long.";
                return false;
            }

            // Placeholder for actual credential validation (e.g., query database)
            if (username == "supplier" && password == "12345" && userType == "Supplier")
            {
                return true;
            }
            else if (username == "admin" && password == "admin" && userType == "Admin")
            {
                return true;
            }
            else if (username == "customer" && password == "cust123" && userType == "Customer")
            {
                return true;
            }

            // Return false if validation fails
            return false;
        }
    }
}

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace TECHFIX_PROJECT
{
    public partial class frmlogin : Form
    {
        public frmlogin()
        {
            InitializeComponent();
        }

        private void frmlogin_Load(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            
                // Simulate a simple user validation (you can connect it to a database or use more secure methods).
                string username = textBox1.Text;
                string password = textBox2.Text;

                // Simple hardcoded validation
                if (username == "sup" && password == "12345")
                {
                    // On successful login, open the next form (e.g., dashboard).
                    MessageBox.Show("Login successful!");
                    Form1 dashboard = new Form1(); // Assuming you have another form.
                    dashboard.Show();
                    this.Hide(); // Hide the login form.
                }
                else
                {
                    // Show error if login fails.
                    MessageBox.Show("Invalid username or password!", "Login Failed", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            

        }

        private void txtpass_Click(object sender, EventArgs e)
        {

        }
    }
}

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace TECHFIX_PROJECT
{
    public partial class frmCategory : Form
    {
        SqlConnection cn = new SqlConnection();
        SqlCommand cm = new SqlCommand();
        DBConnection dbcon = new DBConnection();
        frmCategoryList flist;

        public frmCategory(frmCategoryList frm)
        {
            InitializeComponent();
            cn = new SqlConnection(dbcon.MyConnection());
            flist = frm;
        }

        private void frmCategory_Load(object sender, EventArgs e)
        {

        }

        private void pictureBox2_Click(object sender, EventArgs e)
        {
            this.Dispose();
        }

        public void clear()
        {
            btnsave.Enabled = true;
            btnupdate.Enabled = false;
            txtcategory.Clear();
            txtcategory.Focus();
        }

        private bool IsCategoryExists(string categoryName)
        {
            bool exists = false;
            try
            {
                cn.Open();
                cm = new SqlCommand("SELECT COUNT(*) FROM tblCategory WHERE Category = @category", cn);
                cm.Parameters.AddWithValue("@category", categoryName);
                exists = (int)cm.ExecuteScalar() > 0;
                cn.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            finally
            {
                cn.Close();
            }
            return exists;
        }

        private bool ValidateCategory()
        {
            // Check if the category field is empty
            if (string.IsNullOrWhiteSpace(txtcategory.Text))
            {
                MessageBox.Show("Category field cannot be empty.", "Validation Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                txtcategory.Focus();
                return false;
            }

            // Check if the category already exists
            if (IsCategoryExists(txtcategory.Text))
            {
                MessageBox.Show("Category already exists. Please enter a different category.", "Duplicate Category", MessageBoxButtons.OK, MessageBoxIcon.Error);
                txtcategory.Focus();
                return false;
            }

            return true;
        }

        private void btnsave_Click(object sender, EventArgs e)
        {
            if (!ValidateCategory()) return;

            try
            {
                if (MessageBox.Show("Are you sure you want to save this category?", "Saving Records", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
                {
                    cn.Open();
                    cm = new SqlCommand("INSERT INTO tblCategory(Category) VALUES(@category)", cn);
                    cm.Parameters.AddWithValue("@category", txtcategory.Text);
                    cm.ExecuteNonQuery();
                    cn.Close();
                    MessageBox.Show("Category has been successfully saved.");
                    clear();
                    flist.LoadCategory();
                }
            }
            catch (Exception ex)
            {
                cn.Close();
                MessageBox.Show(ex.Message);
            }
        }

        private void btnupdate_Click(object sender, EventArgs e)
        {
            if (!ValidateCategory()) return;

            try
            {
                if (MessageBox.Show("Are you sure you want to update this category?", "Update Category", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
                {
                    cn.Open();
                    cm = new SqlCommand("UPDATE tblCategory SET Category = @category WHERE id = @id", cn);
                    cm.Parameters.AddWithValue("@category", txtcategory.Text);
                    cm.Parameters.AddWithValue("@id", lblID.Text);
                    cm.ExecuteNonQuery();
                    cn.Close();
                    MessageBox.Show("Category has been successfully updated.");
                    flist.LoadCategory();
                    this.Dispose();
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            clear();
        }
    }
}

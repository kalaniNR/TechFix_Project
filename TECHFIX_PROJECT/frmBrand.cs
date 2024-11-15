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
    public partial class frmBrand : Form
    {
        SqlConnection cn = new SqlConnection();
        SqlCommand cm = new SqlCommand();
        DBConnection dbcon = new DBConnection();
        frmBrandList frmlist;
        public frmBrand(frmBrandList flist)
        {
            InitializeComponent();
            cn = new SqlConnection(dbcon.MyConnection());
            frmlist = flist;
        }

        private void Clear()
        {
            btnsave.Enabled = true;
            btnupdate.Enabled = false;
            txtbrand.Clear();
            txtbrand.Focus();
        }

        private bool IsBrandExists(string brand)
        {
            bool exists = false;
            try
            {
                cn.Open();
                cm = new SqlCommand("SELECT COUNT(*) FROM tblBrand WHERE Brand = @brand", cn);
                cm.Parameters.AddWithValue("@brand", brand);
                int count = Convert.ToInt32(cm.ExecuteScalar());
                cn.Close();
                exists = (count > 0);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            return exists;
        }

        private bool ValidateInput()
        {
            if (string.IsNullOrWhiteSpace(txtbrand.Text))
            {
                MessageBox.Show("Please enter a brand name.", "Validation Error", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                txtbrand.Focus();
                return false;
            }

            if (IsBrandExists(txtbrand.Text))
            {
                MessageBox.Show("This brand already exists.", "Validation Error", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                txtbrand.Focus();
                return false;
            }

            return true;
        }

        private void btnsave_Click(object sender, EventArgs e)
        {
            try
            {
                if (ValidateInput())
                {
                    if (MessageBox.Show("Are you sure you want to save this brand?", "", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
                    {
                        cn.Open();
                        cm = new SqlCommand("INSERT INTO tblBrand(Brand) VALUES(@brand)", cn);
                        cm.Parameters.AddWithValue("@brand", txtbrand.Text);
                        cm.ExecuteNonQuery();
                        cn.Close();
                        MessageBox.Show("Record has been successfully saved.");
                        Clear();
                        frmlist.LoadRecords();
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void pictureBox2_Click(object sender, EventArgs e)
        {
            this.Dispose();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Clear();
            this.Close();
        }

        private void btnupdate_Click(object sender, EventArgs e)
        {
            try
            {
                if (ValidateInput())
                {
                    if (MessageBox.Show("Are you sure you want to update this brand?", "Update Record", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
                    {
                        cn.Open();
                        cm = new SqlCommand("UPDATE tblBrand SET Brand = @brand WHERE id = @id", cn);
                        cm.Parameters.AddWithValue("@brand", txtbrand.Text);
                        cm.Parameters.AddWithValue("@id", lblID.Text);
                        cm.ExecuteNonQuery();
                        cn.Close();
                        MessageBox.Show("Brand has been successfully updated.");
                        Clear();
                        frmlist.LoadRecords();
                        this.Dispose();
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
    }
}

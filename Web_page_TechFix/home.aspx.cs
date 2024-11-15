using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Web_page_TechFix
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadProducts();
        }
    }

    private void LoadProducts()
    {
        string connString = ConfigurationManager.ConnectionStrings["YourConnectionString"].ConnectionString;
        using (SqlConnection conn = new SqlConnection(connString))
        {
            SqlCommand cmd = new SqlCommand("SELECT ProductID, ProductName, Description, Price, ImageUrl FROM Products", conn);
            conn.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            rptProducts.DataSource = reader;
            rptProducts.DataBind();
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TECHFIX_PROJECT
{
    class DBConnection
    {
        public string MyConnection()
        {
            string con = @"Data Source=kalani\SQLEXPRESS;Initial Catalog=TechFix;Integrated Security=True";
            return con;
        }
    }
}

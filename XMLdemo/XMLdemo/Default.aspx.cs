using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Xml;

namespace XMLdemo
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLoad_Click(object sender, EventArgs e)
        {
            //This will work when the DataGridView doesn't have a datasource
            DataSet dsXML = new DataSet();
            dsXML.ReadXml(Server.MapPath("/") + "MOCK_DATA.xml");
            GridView1.AutoGenerateColumns = true;
            GridView1.DataSource = dsXML;
            GridView1.DataBind();

           
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
           //TextBox1.Text = GridView1.Rows[GridView1.SelectedRow]
        }
    }
}
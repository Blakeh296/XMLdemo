using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace XMLdemo
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLoad_Click(object sender, EventArgs e)
        {
            DataSet dsXML = new DataSet();
            dsXML.ReadXml(Server.MapPath("/") + "MOCK_DATA.xml");
            GridView1.AutoGenerateColumns = true;
            GridView1.DataSource = dsXML;
            GridView1.DataBind();
        }
    }
}
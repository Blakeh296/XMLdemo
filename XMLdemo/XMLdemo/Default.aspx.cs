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

        //protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    //Create a gridView Row and grab the selected row using the SelectedRow property
        //    GridViewRow row = GridView1.SelectedRow;

        //    string fName = row.Cells[1].Text.ToString() + ".";
        //    string lName = row.Cells[2].ToString() + ".";
        //}

        protected void btnGetSelected_Click(object sender, EventArgs e)
        {
            try
            {
                tbID.Text = GridView1.SelectedRow.Cells[0].Text;

                tbFirstName.Text = GridView1.SelectedRow.Cells[1].Text;

                tbLastName.Text = GridView1.SelectedRow.Cells[3].Text;

                tbEmail.Text = GridView1.SelectedRow.Cells[4].Text;

                tbGender.Text = GridView1.SelectedRow.Cells[5].Text;
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
        }

        protected void btnLoad_Click(object sender, EventArgs e)
        {
            try
            {
                //This will work when the DataGridView doesn't have a datasource
                DataSet dsXML = new DataSet();
                //Find the File to append to the dataset
                dsXML.ReadXml(Server.MapPath("/") + "MOCK_DATA.xml");
                //You don't kknow how many columns to use, set AutoGen to true
                GridView1.AutoGenerateColumns = true;
                //Set the GV Datasource equal to the DataSet
                GridView1.DataSource = dsXML;

                //Bind the DataSet with the GridView
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
           
        }

        protected void btnUpdateGV_Click(object sender, EventArgs e)
        {
            try
            {
                XmlDocument document = new XmlDocument();
                document.Load(@"G:\C#\XMLdemo\XMLdemo\XMLdemo\MOCK_DATA.xml");
                XmlElement contactElement = document.CreateElement("MOCK_DATA");
                XmlAttribute attribute = document.CreateAttribute("first_Name");
                attribute.Value = tbFirstName.Text;
                document.Save("MOCK_DATA.xml");

                //document.SelectSingleNode(@"/DataSet/MOCK_DATA[2]").Attributes["first_name"].InnerText = tbFirstName.Text;

                GridView1.SelectedRow.Cells[2].Text = tbFirstName.Text;

                GridView1.SelectedRow.Cells[3].Text = tbLastName.Text;

                GridView1.SelectedRow.Cells[4].Text = tbEmail.Text;
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
        }

    }
}
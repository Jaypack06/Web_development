using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Policy;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab_Assignment_9
{
    public partial class ServiceRequest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DropDownList3.Enabled = false;
            }
        }



        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Check if DropDownList1 has a value and DropDownList2 has a value
            if (!string.IsNullOrEmpty(DropDownList1.SelectedValue) &&
                !string.IsNullOrEmpty(DropDownList2.SelectedValue))
            {
                string subCategory = DropDownList2.SelectedValue;

                DropDownList3.Items.Clear();
                DropDownList3.Items.Add(new ListItem("-- Select Specific Item --", ""));

                // Populate based on DropDownList2 value
                if (subCategory == "Appliance")
                {
                    DropDownList3.Items.Add(new ListItem("Clothes dryer", "ClothesDryer"));
                    DropDownList3.Items.Add(new ListItem("Clothes washer", "ClothesWasher"));
                    DropDownList3.Items.Add(new ListItem("Dishwasher", "Dishwasher"));
                    DropDownList3.Items.Add(new ListItem("Disposal", "Disposal"));
                    DropDownList3.Enabled = true;
                }
                else if (subCategory == "Doors and locks")
                {
                    DropDownList3.Items.Add(new ListItem("Exterior door", "Exterior door"));
                    DropDownList3.Items.Add(new ListItem("Garage door", "Garage door"));
                    DropDownList3.Items.Add(new ListItem("Interior door", "Interior door"));
                    DropDownList3.Enabled = true;
                }
                else if (subCategory == "Electrical and lighting")
                {
                    DropDownList3.Items.Add(new ListItem("Electrical outlet", "Electrical outlet"));
                    DropDownList3.Items.Add(new ListItem("Interior lighting", "Interior lighting"));
                    DropDownList3.Items.Add(new ListItem("Exterior lighting", "Exterior lighting"));
                    DropDownList3.Enabled = true;
                }
                else if (subCategory == "Flooring")
                {
                    DropDownList3.Items.Add(new ListItem("Carpet", "Carpet"));
                    DropDownList3.Items.Add(new ListItem("Marble/stone", "Marble/stone"));
                    DropDownList3.Items.Add(new ListItem("Ceramic tile", "Ceramic tile"));
                    DropDownList3.Enabled = true;
                }
                else if (subCategory == "General")
                {
                    DropDownList3.Items.Add(new ListItem("Closet", "Closet"));
                    DropDownList3.Items.Add(new ListItem("Paint", "Paint"));
                    DropDownList3.Items.Add(new ListItem("Cabinet", "Cabinet"));
                    DropDownList3.Enabled = true;
                }
                
                else
                {
                    DropDownList3.Enabled = false;
                }
            }
            else
            {
                DropDownList3.Enabled = false;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = "Thank you! We will contact you soon.";

        }
    }
}


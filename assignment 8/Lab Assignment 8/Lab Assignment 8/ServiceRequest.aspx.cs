using System;

namespace Lab_Assignment_8
{
    public partial class ServiceRequest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Welcome_Click(object sender, EventArgs e) => Label1.Text = "Welcome to IS2350";

        protected void Submit_Click1(object sender, EventArgs e)
        {
            Submes.Text = $"Thank you {TextBox1.Text}! We will contact you soon.";

            TextBox1.Text = string.Empty;
            TextBox2.Text = string.Empty;
            TextBox3.Text = string.Empty;
        }
    }
}
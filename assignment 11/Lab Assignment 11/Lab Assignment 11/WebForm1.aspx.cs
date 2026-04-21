using System;
using System.Web.UI;

namespace YourApp
{
    public partial class Validations : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                lblMessage.Text = "Form submitted successfully! All validations passed.";
                lblMessage.ForeColor = System.Drawing.Color.Green;

                // Optional: Display submitted data
                // lblMessage.Text = $"Welcome {txtUserName.Text}! Your registration is complete.";
            }
            else
            {
                lblMessage.Text = "Please correct the errors shown above.";
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}
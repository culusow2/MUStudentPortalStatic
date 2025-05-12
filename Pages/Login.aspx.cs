using System;

public partial class Login : System.Web.UI.Page
{
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string studentID = txtStudentID.Text.Trim();
        string password = txtPassword.Text.Trim();

        if (studentID == "26188" && password == "pass123")
        {
            Session["studentID"] = studentID;
            Response.Redirect("Subjects.aspx");  // Redirect to Subjects page on successful login
        }
        else
        {
            lblMessage.Text = "Invalid Student ID or Password.";
        }
    }
}

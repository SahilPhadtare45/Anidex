using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace WebApplication
{
    public partial class Project : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] != null)
            {
                string username = Session["Username"].ToString();
                Label1.Text = "Welcome, " + username;
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {
            PanelAction.Visible = false;
            PanelRomance.Visible = false;
            PanelComedy.Visible = false;
            PanelDrama.Visible = false;
            PanelSliceOfLife.Visible = false;
            PanelSciFi.Visible = false;

            string connectionString = ConfigurationManager.ConnectionStrings["Database2.mdf"].ConnectionString;
            string searchQuery = TextBox2.Text.Trim();
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string sqlQuery = "SELECT * FROM Anidex WHERE Title LIKE @SearchQuery OR AltTitle LIKE @SearchQuery OR Genre LIKE @SearchQuery OR Type LIKE @SearchQuery";
                SqlCommand command = new SqlCommand(sqlQuery, connection);
                command.Parameters.AddWithValue("@SearchQuery", "%" + searchQuery + "%");

                    connection.Open();
                    SqlDataReader reader = command.ExecuteReader();
                    searchResults.InnerHtml = "";

                    while (reader.Read())
                    {
                        string title = reader["Title"].ToString();
                        string altTitle = reader["AltTitle"].ToString();
                        string imageUrl = reader["ImageUrl"].ToString();
                        string detailsUrl = reader["DetailsUrl"].ToString();

                        searchResults.InnerHtml += $@"
                        <div class='content'>
                            <img src='{imageUrl}' /><br>
                            <h3>{title}</h3><br>
                            <h4>{altTitle}</h4><br>
                            <a href='{detailsUrl}'>Details</a>
                        </div>";
                    }
                    reader.Close();
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
                PanelAction.Visible = false;
                PanelRomance.Visible = false;
                PanelComedy.Visible = false;
                PanelDrama.Visible = false;
                PanelSliceOfLife.Visible = false;
                PanelSciFi.Visible = false;

                string connectionString = ConfigurationManager.ConnectionStrings["Database2.mdf"].ConnectionString;
                string searchQuery = DropDownList1.SelectedValue;
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    string sqlQuery = "SELECT * FROM Anidex WHERE Genre LIKE @SearchQuery";
                    SqlCommand command = new SqlCommand(sqlQuery, connection);
                    command.Parameters.AddWithValue("@SearchQuery", "%" + searchQuery + "%");

                        connection.Open();
                        SqlDataReader reader = command.ExecuteReader();
                        searchResults.InnerHtml = ""; 

                        while (reader.Read())
                        {
                            string title = reader["Title"].ToString();
                            string altTitle = reader["AltTitle"].ToString();
                            string imageUrl = reader["ImageUrl"].ToString();
                            string detailsUrl = reader["DetailsUrl"].ToString();

                            searchResults.InnerHtml += $@"
                            <div class='content'>
                                <img src='{imageUrl}' /><br>
                                <h3>{title}</h3><br>
                                <h4>{altTitle}</h4><br>
                                <a href='{detailsUrl}'>Details</a>
                            </div>";
                        }

                        reader.Close();
                }
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            PanelAction.Visible = false;
            PanelRomance.Visible = false;
            PanelComedy.Visible = false;
            PanelDrama.Visible = false;
            PanelSliceOfLife.Visible = false;
            PanelSciFi.Visible = false;

            string connectionString = ConfigurationManager.ConnectionStrings["Database2.mdf"].ConnectionString;
            string searchQuery = DropDownList2.SelectedValue;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string sqlQuery = "SELECT * FROM Anidex WHERE Type LIKE @SearchQuery";
                SqlCommand command = new SqlCommand(sqlQuery, connection);
                command.Parameters.AddWithValue("@SearchQuery", "%" + searchQuery + "%");

                    connection.Open();
                    SqlDataReader reader = command.ExecuteReader();
                    searchResults.InnerHtml = "";

                    while (reader.Read())
                    {
                        string title = reader["Title"].ToString();
                        string altTitle = reader["AltTitle"].ToString();
                        string imageUrl = reader["ImageUrl"].ToString();
                        string detailsUrl = reader["DetailsUrl"].ToString();

                        searchResults.InnerHtml += $@"
                            <div class='content'>
                                <img src='{imageUrl}' /><br>
                                <h3>{title}</h3><br>
                                <h4>{altTitle}</h4><br>
                                <a href='{detailsUrl}'>Details</a>
                            </div>";
                    }
                    reader.Close();
            }
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }
    }
}
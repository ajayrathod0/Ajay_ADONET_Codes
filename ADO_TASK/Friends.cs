using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ADO_TASK
{
    public class Friends
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public DateTime DateOfBirth { get; set; }
        public string Mobile { get; set; }
        public string Email { get; set; }
        public string WhatsAppMessage { get; set; }
        public string EmailSubject { get; set; }
        public string EmailBody { get; set; }
        public DateTime MessageSentDate { get; set; }
        public DateTime EmailSentDate { get; set; }
    }


    public class FriendManager
    {
        private  string connectionString = "Server=.\\SQLEXPRESS;database=B22ADONETDB;integrated security = true;";

        public List<Friends> GetFriendsWithTodayBirthday()
        {
            List<Friends> friends = new List<Friends>();
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                string query = "SELECT * FROM Friends WHERE MONTH(DateOfBirth) = MONTH(GETDATE()) AND DAY(DateOfBirth) = DAY(GETDATE())";
                SqlCommand command = new SqlCommand(query, connection);
                SqlDataReader reader = command.ExecuteReader();
                while (reader.Read())
                {
                    Friends friend = new Friends
                    {
                        Id = (int)reader["Id"],
                        Name = reader["Name"].ToString(),
                        DateOfBirth = Convert.ToDateTime(reader["DateOfBirth"]),
                        Mobile = reader["Mobile"].ToString(),
                        Email = reader["email"].ToString(),
                        WhatsAppMessage = reader["WhatsAppMessage"].ToString()
                    };
                    friends.Add(friend);
                }
            }
            return friends;
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ADO_TASK
{
    internal class Program
    {
        static void Main(string[] args)
        {
            FriendManager friendManager = new FriendManager();
            List<Friends> friends = friendManager.GetFriendsWithTodayBirthday();
            foreach (Friends friend in friends)
            {
                Console.WriteLine($"Friend_ID : {friend.Id} Friend Name : {friend.Name} DOB : {friend.DateOfBirth} " +
                    $"Friend_Mobile : {friend.Mobile} Massage : {friend.WhatsAppMessage} " +
                    $"Email : {friend.Email}  Massage sent Time @{DateTime.Now} ");
            }

            Console.ReadLine();

        }
    }
}

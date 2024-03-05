using Microsoft.Data.SqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace ADONETCoreApp
{
    public class TrainerDB
    {
        public bool DeleteTrainer(int id)
        {//.Net Core Console App me yaha extra "encrypt = false;" add karni padengi Connection String me
            string cs = "Server=.\\SQLEXPRESS;database=B22ADONETDB;integrated security=true;encrypt=false;";
            SqlConnection con = new SqlConnection(cs);//SqlConnection class core me nahi hai agar lagta hai to
            //nuged pakeage se download/install karna padenga "Microsoft.Data.SqlClient"

            SqlCommand cmd = new SqlCommand("uspDeleteTrainer", con);
            cmd.CommandType = CommandType.StoredProcedure;



            cmd.Parameters.AddWithValue("@Id", id);

            SqlParameter status = new SqlParameter()
            {
                ParameterName = "@Status",
                SqlDbType = SqlDbType.Bit,
                Direction = ParameterDirection.Output
            };
            cmd.Parameters.Add(status);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            return (bool)status.Value;
        }
    }
}

using System;
using System.Data;
using System.Data.SqlClient;

class Program
{
    static void Main()
    {
        string connectionString = "Server=.\\SQLEXPRESS;database=ajay;integrated security = true;";

        string storedProcedureName = "uspGetTableData";

        string tableName = "student";
        string columnName = "name";

        SqlConnection connection = new SqlConnection(connectionString);

        SqlCommand command = new SqlCommand(storedProcedureName, connection);
        command.CommandType = CommandType.StoredProcedure;


        command.CommandType = CommandType.StoredProcedure;

        command.Parameters.Add(new SqlParameter("@TableName", SqlDbType.NVarChar) { Value = tableName });
        command.Parameters.Add(new SqlParameter("@ColumnName", SqlDbType.NVarChar) { Value = columnName });

        try
        {
            connection.Open();

            using (SqlDataReader reader = command.ExecuteReader())
            {
                while (reader.Read())
                {
                    Console.WriteLine(reader["name"].ToString());
                }
            }
        }
        catch (Exception ex)
        {
            Console.WriteLine($"Error: {ex.Message}");
        }
        connection.Close();

        Console.ReadLine();
    }
}



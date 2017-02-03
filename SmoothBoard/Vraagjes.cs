using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace SmoothBoard
{
    public class Vraagjes
    {
        public int Id { get; set; }
        public string Question { get; set; }
        public string Answer { get; set; }

        string DbConnect = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\SurfData.mdf;Integrated Security=True";

        public List<Vraagjes> GetFAQ()
        {
            List<Vraagjes> vragen = new List<Vraagjes>();

            using (SqlConnection con = new SqlConnection(DbConnect))
            {
                SqlCommand cmd = new SqlCommand("select * from FAQ", con);
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();

                while (rdr.Read())
                {
                    vragen.Add(new Vraagjes
                    {
                        Id = rdr.GetInt32(0),
                        Question = rdr.GetString(1),
                        Answer = rdr.GetString(2)
                    });
                }
            }
            return vragen;
        }
    }
}
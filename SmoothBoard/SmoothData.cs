using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace SmoothBoard
{
    public class SmoothData
    {
        public List<SmoothProduct> ProductList { get; set; }

        string DbConnect = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\SurfData.mdf;Integrated Security=True";

        public List<SmoothProduct> GetProducts()
        {
            List<SmoothProduct> SProduct = new List<SmoothProduct>();

            using (SqlConnection con = new SqlConnection(DbConnect))
            {
                SqlCommand cmd = new SqlCommand("select * from Product", con);
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();

                while (rdr.Read())
                {
                    SProduct.Add(new SmoothProduct
                    {
                        Id = rdr.GetInt32(0),
                        Name = rdr.GetString(1),
                        ProductType = rdr.GetInt32(2),
                        Description = rdr.GetString(3),
                        Image = rdr.GetString(4),
                        ProductId = rdr.GetString(5),
                        Price = rdr.GetDecimal(6)
                    });
                }
            }
            return SProduct;
        }

        public SmoothProduct GetProduct(int id)
        {

            using (SqlConnection con = new SqlConnection(DbConnect))
            {
                SqlCommand cmd = new SqlCommand("select * from Product where Id=" + id, con);
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                SmoothProduct ProductDetail = new SmoothProduct();

                ProductDetail.Id = rdr.GetInt32(0); ;
                ProductDetail.Name = rdr.GetString(1);
                ProductDetail.ProductType = rdr.GetInt32(2);
                ProductDetail.Description = rdr.GetString(3);
                ProductDetail.Image = rdr.GetString(4);
                ProductDetail.ProductId = rdr.GetString(5);
                ProductDetail.Price = rdr.GetDecimal(6);

                return ProductDetail;
            }
        }

        public SmoothData()
        {
            ProductList = GetProducts();
        }
    }
}
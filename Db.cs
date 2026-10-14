using System.Configuration;
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.Text;

namespace WebApplication1
{
    /// <summary>Small ADO.NET helper shared by all pages.</summary>
    public static class Db
    {
        public static SqlConnection GetConnection()
        {
            string cs = ConfigurationManager.ConnectionStrings["EasyTravelDb"].ConnectionString;
            return new SqlConnection(cs);
        }

        /// <summary>SHA-256 hash as lowercase hex — matches the seed data in Database/EasyTravel.sql.</summary>
        public static string HashPassword(string plain)
        {
            using (SHA256 sha = SHA256.Create())
            {
                byte[] bytes = sha.ComputeHash(Encoding.UTF8.GetBytes(plain));
                StringBuilder sb = new StringBuilder(64);
                foreach (byte b in bytes) sb.Append(b.ToString("x2"));
                return sb.ToString();
            }
        }
    }
}

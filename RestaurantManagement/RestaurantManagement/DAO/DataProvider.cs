using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml;

namespace RestaurantManagement.DAO
{
    class DataProvider
    {
        private static DataProvider instance;

        internal static DataProvider Instance
        {
            get { if (DataProvider.instance == null) instance = new DataProvider(); return DataProvider.instance; }
            private set { DataProvider.instance = value; }
        }
        private DataProvider() {
            XmlDataDocument xmldoc = new XmlDataDocument();
            XmlNodeList xmlnode;
            int i = 0;
            string str = null;
            FileStream fs = new FileStream("config.xml", FileMode.Open, FileAccess.Read);
            xmldoc.Load(fs);
            xmlnode = xmldoc.GetElementsByTagName("connectstring");
            for (i = 0; i <= xmlnode.Count - 1; i++)
            {
                connectionSRT = xmlnode[i].ChildNodes.Item(0).InnerText.Trim();
            }
        }

        private string connectionSRT;
       
        public DataTable ExecuteQuery(string query, object[] parameter = null) {

            DataTable datatable = new DataTable();

            using (SqlConnection connection = new SqlConnection(connectionSRT)){
                
                connection.Open();
                SqlCommand command = new SqlCommand(query, connection);

                if (parameter != null) {
                    string[] listpara = query.Split(' ');
                    int i = 0;
                    foreach (string item in listpara)
                    {
                        if (item.Contains('@'))
                        {
                            command.Parameters.AddWithValue(item, parameter[i]);
                            i++;
                        }
                    }
                }
            

                SqlDataAdapter adapter = new SqlDataAdapter(command);
            
                adapter.Fill(datatable);
                connection.Close();
            }

            return datatable;
        }

        public int ExecuteNonQuery(string query, object[] parameter = null)
        {
            int data;

            using (SqlConnection connection = new SqlConnection(connectionSRT))
            {

                connection.Open();
                SqlCommand command = new SqlCommand(query, connection);

                if (parameter != null)
                {
                    string[] listpara = query.Split(' ');
                    int i = 0;
                    foreach (string item in listpara)
                    {
                        if (item.Contains('@'))
                        {
                            command.Parameters.AddWithValue(item, parameter[i]);
                            i++;
                        }
                    }
                }


                data = command.ExecuteNonQuery();

            
                connection.Close();
            }

            return data;
        }

        public object ExcuteScalar(string query, object[] parameter = null)
        {
            object data = 0;
            using (SqlConnection connection = new SqlConnection(connectionSRT))
            {

                connection.Open();
                SqlCommand command = new SqlCommand(query, connection);

                if (parameter != null)
                {
                    string[] listpara = query.Split(' ');
                    int i = 0;
                    foreach (string item in listpara)
                    {
                        if (item.Contains('@'))
                        {
                            command.Parameters.AddWithValue(item, parameter[i]);
                            i++;
                        }
                    }
                }


                data = command.ExecuteScalar();
                connection.Close();
            }

            return data;
        }

    }
}

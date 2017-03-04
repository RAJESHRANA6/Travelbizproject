using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using BusinessObjects;

namespace DataAccessLayer
{
    public class DataAccessLayer
    {
        #region AutogenerateServiceno

        public string AutogenerateServiceno()
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
            conn.Open();
            SqlCommand cmd = new SqlCommand("proc_autogeneratesvno", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            string s = cmd.ExecuteScalar().ToString();
            return s;
        }
        #endregion
        #region Addbus
        public int Addbus(BusinessObjects.BusinessObjects objbo)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
            conn.Open();
            SqlCommand cmd = new SqlCommand("proc_addbus", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@svno", objbo.Serviceno);
            cmd.Parameters.AddWithValue("@fromplace", objbo.Fromplace);
            cmd.Parameters.AddWithValue("@toplace", objbo.Toplace);
            cmd.Parameters.AddWithValue("@capacity", objbo.Capacity);
            cmd.Parameters.AddWithValue("@arrtime", objbo.Arrivaltime);
            cmd.Parameters.AddWithValue("@deptime", objbo.Deptime);
            cmd.Parameters.AddWithValue("@taname", objbo.Travelagencyname);
            cmd.Parameters.AddWithValue("@bustype", objbo.bustype);
            int i = cmd.ExecuteNonQuery();
            return 1;
        }
        #endregion
        #region Viewbus
        public DataSet Viewbus()
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
            conn.Open();
            SqlCommand cmd = new SqlCommand("proc_viewbus", conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.CommandType = CommandType.StoredProcedure;
            DataSet ds = new DataSet();
            da.Fill(ds, "bus");
            return ds;
        }
        #endregion
        #region Deletebus
        public int DeleteBus(BusinessObjects.BusinessObjects objbo)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
            conn.Open();
            SqlCommand cmd = new SqlCommand("proc_deletebus", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@serviceno", objbo.Serviceno);
            int i = cmd.ExecuteNonQuery();
            return i;
        }
        #endregion
        #region Editbus
        public int EditBus(BusinessObjects.BusinessObjects objbo)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
            conn.Open();
            SqlCommand cmd = new SqlCommand("proc_editbus", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@svno", objbo.Serviceno);
            cmd.Parameters.AddWithValue("@fromplace", objbo.Fromplace);
            cmd.Parameters.AddWithValue("@toplace", objbo.Toplace);
            cmd.Parameters.AddWithValue("@capacity", objbo.Capacity);
            cmd.Parameters.AddWithValue("@arrtime", objbo.Arrivaltime);
            cmd.Parameters.AddWithValue("@deptime", objbo.Deptime);
            cmd.Parameters.AddWithValue("@tname", objbo.Travelagencyname);
            cmd.Parameters.AddWithValue("@bustype", objbo.bustype);
            int i = cmd.ExecuteNonQuery();
            return i;
        }
        #endregion
        #region Autogeneratepickuppointtid
        public string AutogeneratePickpoint()
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
            conn.Open();
            SqlCommand cmd = new SqlCommand("proc_autogeneratepickuppointid", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            string s = cmd.ExecuteScalar().ToString();
            return s;
        }
        #endregion
        #region Addpickuppoint
        public int Addpickuppoint(BusinessObjects.BusinessObjects objbo)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
            conn.Open();
            SqlCommand cmd = new SqlCommand("proc_addpickuppoint", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@pid", objbo.Pid);
            cmd.Parameters.AddWithValue("@pname", objbo.Pname);
            int i = cmd.ExecuteNonQuery();
            return i;
        }
        #endregion
        #region Viewpickuppoints
        public DataSet Viewpickuppoints()
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
            conn.Open();
            SqlCommand cmd = new SqlCommand("proc_viewpickuppoint", conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.CommandType = CommandType.StoredProcedure;
            DataSet ds = new DataSet();
            da.Fill(ds,"pickuppoint");
            return ds;
        }
        #endregion
        #region Deletepickuppoint
        public int Deletepickuppoint(BusinessObjects.BusinessObjects objbo)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
            conn.Open();
            SqlCommand cmd = new SqlCommand("proc_deletepickuppoint", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@pid", objbo.Pid);
            int i = cmd.ExecuteNonQuery();
            return i;
        }
        #endregion
        #region Bindserviceno
        public SqlDataReader Bindserviceno()
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
            conn.Open();
            SqlCommand cmd = new SqlCommand("proc_bindserviceno", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataReader dr = cmd.ExecuteReader();
            return dr;
        }
        #endregion
        #region Addbuspickuppoints
        public int Addbuspickuppoints(BusinessObjects.BusinessObjects objbo)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
            conn.Open();
            SqlCommand cmd = new SqlCommand("proc_addbuspickuppoint", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@svno", objbo.Serviceno);
            cmd.Parameters.AddWithValue("@pid", objbo.Pid);
            int i = cmd.ExecuteNonQuery();
            return i;
        }
        #endregion
        #region AutogenerateDid
        public string AutogenerateDid()
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
            conn.Open();
            SqlCommand cmd = new SqlCommand("proc_autogeneratedid", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            string s = cmd.ExecuteScalar().ToString();
            return s;
        }
        #endregion
        #region AddDestinationpoint
        public int AddDestinationpoint(BusinessObjects.BusinessObjects objbo)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
            conn.Open();
            SqlCommand cmd = new SqlCommand("proc_adddestinationpoint", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@did", objbo.Did);
            cmd.Parameters.AddWithValue("@dname", objbo.Dname);
            int i = cmd.ExecuteNonQuery();
            return i;
        }
        #endregion
        #region ViewDpoints
        public DataSet ViewDpoint()
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
            SqlCommand cmd = new SqlCommand("proc_displaydpoints", conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.CommandType = CommandType.StoredProcedure;
            DataSet ds = new DataSet();
            da.Fill(ds, "destination");
            return ds;
        }
        #endregion
        #region deletedestpoint
        public int deletedestinationpoint(BusinessObjects.BusinessObjects objbo)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
            conn.Open();
            SqlCommand cmd = new SqlCommand("proc_deletedestinationpoint", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@did", objbo.Did);
            int i = cmd.ExecuteNonQuery();
            return i;
        }
        #endregion
        #region updatedest
        public int Updatedestination(BusinessObjects.BusinessObjects objbo)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
            conn.Open();
            SqlCommand cmd = new SqlCommand("proc_updatedestination", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@did", objbo.Did);
            cmd.Parameters.AddWithValue("@dname", objbo.Dname);
            int i = cmd.ExecuteNonQuery();
            return i;
        }
        #endregion
        /* all these functions in the data access layer are used to first opne and 
         * establish a connection with the SQL Server 2008 database, then  perform functions
         * such as add and delete and even update using stored procedures from the database
         * It uses businessobject layer's object in order to do so.
         * /
    }
}
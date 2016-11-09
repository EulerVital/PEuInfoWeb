using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace PEuInfoWeb.Camadas.DAO.DBUtil
{
    public class dConexao
    {
        private SqlConnection conexao;
        public SqlConnection SqlCon;
        public SqlCommand SqlComd;

        public SqlConnection Conectar()
        {
            try
            {
                conexao = new SqlConnection(ConfigurationManager.ConnectionStrings["PEuInfoWeb.Properties.Settings.strConnection"].ConnectionString);
                conexao.Open();
                return conexao;
            }
            catch (SqlException sqlex)
            {
                throw sqlex;
            }
        }

    }
}
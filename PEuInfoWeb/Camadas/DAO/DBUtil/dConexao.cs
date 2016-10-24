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
            conexao = new SqlConnection(ConfigurationManager.ConnectionStrings["strConnection"].ConnectionString);
            conexao.Open();
            return conexao;
        }

    }
}
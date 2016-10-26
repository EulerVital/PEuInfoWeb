using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using PEuInfoWeb.Camadas.ENT;
using PEuInfoWeb.Camadas.DAO.DBUtil;
using System.Data;
using System.Data.SqlClient;

namespace PEuInfoWeb.Camadas.DAO
{
    public class dAdm : dConexao
    {
        IDataReader dr;
        public eAdm SetarObjeto(IDataReader dr)
        {
            eAdm adm = new eAdm();

            adm.nome = dr["NOME"].ToString();
            adm.email = dr["EMAIL"].ToString();
            adm.senha = dr["SENHA"].ToString();

            return adm;
        }

        public List<eAdm> ListarAdms(string nome, string email, string senha)
        {
            List<eAdm> listaAdms = new List<eAdm>();

            SqlComd = new SqlCommand();
            SqlCon = Conectar();
            SqlComd.Connection = SqlCon;
            SqlComd.CommandType = CommandType.StoredProcedure;
            SqlComd.CommandText = "USP_SEL_ADM";

            SqlComd.Parameters.AddWithValue("@Nome", nome);
            SqlComd.Parameters.AddWithValue("@Email", email);
            SqlComd.Parameters.AddWithValue("@Senha", senha);

            dr = SqlComd.ExecuteReader();

            try
            {
                while (dr.Read())
                    listaAdms.Add(SetarObjeto(dr));

                return listaAdms;
            }
            catch (SqlException sqlex)
            {
                throw sqlex;
            }
            finally
            {
                SqlCon.Close();
            }
        }
    }
}
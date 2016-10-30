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

        #region Explicação da Classe

        /// <summary>
        /// Está classe é responsavel por listar administradores, cadastrar e deletar do banco de dados
        /// </summary>

        #endregion

        #region Setar Administrador
        public eAdm SetarObjeto(IDataReader dr)
        {
            eAdm adm = new eAdm();

            adm.nome = dr["NOME"].ToString();
            adm.email = dr["EMAIL"].ToString();
            adm.senha = dr["SENHA"].ToString();

            return adm;
        }
        #endregion

        #region Lista Administradores
        public List<eAdm> listarAdms(string nome, string email, string senha)
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
        #endregion

        #region Cadastrar e Alterar Administradores

        public bool gravarAdm(int? id, string nome, string email, string senha)
        {
            SqlComd = new SqlCommand();
            SqlCon = Conectar();
            SqlComd.Connection = SqlCon;
            SqlComd.CommandType = CommandType.StoredProcedure;
            SqlComd.CommandText = "USP_INS_ADM";

            SqlComd.Parameters.AddWithValue("@Id", id);
            SqlComd.Parameters.AddWithValue("@Nome",nome);
            SqlComd.Parameters.AddWithValue("@Email", email);
            SqlComd.Parameters.AddWithValue("@Senha", senha);

            try
            {
                int afetatos = SqlComd.ExecuteNonQuery();

                if(afetatos > 0)
                {
                    return true;
                }else
                {
                    return false;
                }

            }catch(SqlException sqlex)
            {
                throw sqlex;
            }
            finally
            {
                SqlCon.Dispose();
                SqlCon.Close();
                SqlCon = null;
            }


        }

        #endregion

        #region Delatar Administradores

        public bool deletarAdm(int? id)
        {
            SqlComd = new SqlCommand();
            SqlCon = Conectar();
            SqlComd.Connection = SqlCon;
            SqlComd.CommandType = CommandType.StoredProcedure;
            SqlComd.CommandText = "USP_DEL_ADM";

            SqlComd.Parameters.AddWithValue("@Id", id);

            try
            {
                int afetados = SqlComd.ExecuteNonQuery();

                if(afetados > 0)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (SqlException sqlex)
            {
                throw sqlex;
            }
            finally
            {
                SqlCon.Dispose();
                SqlCon.Close();
                SqlCon = null;
            }

        }

        #endregion
    }
}
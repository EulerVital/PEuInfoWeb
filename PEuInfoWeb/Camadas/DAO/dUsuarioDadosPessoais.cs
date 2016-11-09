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
    public class dUsuarioDadosPessoais : dConexao
    {
        IDataReader dr;

        #region Explicação da Classe

        /// <summary>
        /// Está classe é responsavel por listar usuario, cadastrar e deletar do banco de dados
        /// </summary>

        #endregion

        #region Setar User
        public eUsuarioDadosPessoais SetarObjeto(IDataReader dr)
        {
            eUsuarioDadosPessoais usuario = new eUsuarioDadosPessoais();

            usuario.Nome = dr["Nome"].ToString();
            usuario.Email = dr["Email"].ToString();
            usuario.Senha = dr["Senha"].ToString();
            usuario.Telefone = dr["Telefone"].ToString();
            usuario.Celular = dr["Celular"].ToString();
            usuario.DataNascimento = dr["DataNascimento"].ToString();

            return usuario;
        }
        #endregion

        #region Lista User
        public List<eUsuarioDadosPessoais> listarUser(eUsuarioDadosPessoais usuario)
        {
            List<eUsuarioDadosPessoais> listaAdms = new List<eUsuarioDadosPessoais>();

            SqlComd = new SqlCommand();
            SqlCon = Conectar();
            SqlComd.Connection = SqlCon;
            SqlComd.CommandType = CommandType.StoredProcedure;
            SqlComd.CommandText = "USP_SEL_USER_DADOS_PESSOAIS";

            SqlComd.Parameters.AddWithValue("@Nome", usuario.Nome);
            SqlComd.Parameters.AddWithValue("@Email", usuario.Email);
            SqlComd.Parameters.AddWithValue("@Senha", usuario.Senha);
            SqlComd.Parameters.AddWithValue("@Telefone", usuario.Telefone);
            SqlComd.Parameters.AddWithValue("@Celular", usuario.Celular);
            SqlComd.Parameters.AddWithValue("@DataNascimento", usuario.DataNascimento);

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

        #region Cadastrar e Alterar User

        public bool gravarUser(eUsuarioDadosPessoais usuario)
        {
            SqlComd = new SqlCommand();
            SqlComd.CommandType = CommandType.StoredProcedure;
            SqlComd.CommandText = "USP_INS_USER_DADOS_PESSOAIS";

            SqlComd.Parameters.AddWithValue("@Id", null);
            SqlComd.Parameters.AddWithValue("@Nome",usuario.Nome);
            SqlComd.Parameters.AddWithValue("@Email", usuario.Email);
            SqlComd.Parameters.AddWithValue("@Senha", usuario.Senha);
            SqlComd.Parameters.AddWithValue("@Telefone", usuario.Telefone);
            SqlComd.Parameters.AddWithValue("@Celular", usuario.Celular);
            SqlComd.Parameters.AddWithValue("@DataNascimento", usuario.DataNascimento);

            SqlCon = Conectar();
            SqlComd.Connection = SqlCon;

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

        #region Delatar User

        public bool deletarUser(int? id)
        {
            SqlComd = new SqlCommand();
            SqlCon = Conectar();
            SqlComd.Connection = SqlCon;
            SqlComd.CommandType = CommandType.StoredProcedure;
            SqlComd.CommandText = "USP_DEL_USER_DADOS_PESSOAIS";

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
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using PEuInfoWeb.Camadas.DAO.DBUtil;
using PEuInfoWeb.Camadas.ENT;
using System.Data.SqlClient;
using System.Data;

namespace PEuInfoWeb.Camadas.DAO
{
    public class dLoginUser : dConexao
    {
        #region Explicação da Classe

        /// <summary>
        /// Está classe é responsavel por fazer o a controle de login de usuario cadastrando e buscando no banco de dados
        /// </summary>

        #endregion

        #region Logar
        public eLoginUser LogarUser(string email, string senha)
        {
            IDataReader dr;
            eLoginUser login = new eLoginUser();

            try
            {
                SqlComd = new SqlCommand();
                SqlCon = Conectar();
                SqlComd.Connection = SqlCon;
                SqlComd.CommandType = CommandType.StoredProcedure;
                SqlComd.CommandText = "USP_SEL_LOGAR";

                SqlComd.Parameters.AddWithValue("@Email", email);
                SqlComd.Parameters.AddWithValue("@Senha", senha);

                dr = SqlComd.ExecuteReader();

                while (dr.Read())
                     login = SetarObjetos(dr);

                return login;

            }catch(SqlException sqlex)
            {
                throw sqlex;
            }catch(Exception ex)
            {
                throw ex;
            }
            finally
            {
                SqlCon.Close();
            }

        }

        #endregion

        #region SetarObjetoLogar
        public eLoginUser SetarObjetos(IDataReader dr)
        {
            eLoginUser login = new eLoginUser();

            login.idUser = Convert.ToInt32(dr["ID"]);
            login.Nome = dr["Nome"].ToString();

            return login;
        }

        #endregion

        #region Gravar Login
        public int GravarLogin(eLoginUser login)
        {
            SqlComd = new SqlCommand();
            SqlComd.CommandType = CommandType.StoredProcedure;
            SqlComd.CommandText = "USP_INS_USER_LOGIN";

            try
            {
                SqlComd.Parameters.AddWithValue("@IdUser", login.idUser);
                SqlComd.Parameters.AddWithValue("@Status", login.status);
                SqlComd.Parameters.AddWithValue("@Email", login.Email);
                SqlComd.Parameters.AddWithValue("@Senha", login.Senha);
                SqlComd.Parameters.AddWithValue("@Nome", login.Nome);

                SqlCon = Conectar();
                SqlComd.Connection = SqlCon;

                return SqlComd.ExecuteNonQuery();
            }
            catch (SqlException sqlex)
            {
                throw sqlex;
            }catch(Exception ex)
            {
                throw ex;
            }
            finally
            {
                SqlCon.Close();
            }
        }
        #endregion
    }
}
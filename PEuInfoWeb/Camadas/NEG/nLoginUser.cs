using PEuInfoWeb.Camadas.DAO;
using PEuInfoWeb.Camadas.ENT;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PEuInfoWeb.Camadas.NEG
{
    public class nLoginUser
    {
        #region Explicação da Classe

        /// <summary>
        /// Está classe é responsavel por fazer a ligação entre a classe de conexão e a .cs da pagina onde é feita a validação de login
        /// </summary>

        #endregion

        #region Logar

        public static eLoginUser LogarUser(string email,string senha)
        {
            try
            {
                dLoginUser db = new dLoginUser();
                return db.LogarUser(email, senha);
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        #endregion

        #region Gravar Login

        public static int GravarLogin(eLoginUser login)
        {
            try
            {
                dLoginUser db = new dLoginUser();
                return db.GravarLogin(login);
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        #endregion
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using PEuInfoWeb.Camadas.ENT;
using PEuInfoWeb.Camadas.DAO;

namespace PEuInfoWeb.Camadas.NEG
{
    public class nUsuarioDadosPessoais
    {
        #region Explicação da classe
        // Essa classe é responsalvel por fazer a conexão entre a .cs da pagina e a classe dUsuarioDadosPessoais   
        #endregion

        #region Lista Usuarios
        public List<eUsuarioDadosPessoais> listaUser(eUsuarioDadosPessoais usuario)
        {
            try
            {
                dUsuarioDadosPessoais user = new dUsuarioDadosPessoais();
                return user.listarUser(usuario);
            }
            catch (Exception e)
            {
                throw e;
            }
        }
        #endregion

        #region Cadastrar e Alterar Usuario

        public int gravarUser(eUsuarioDadosPessoais usuario)
        {
            try
            {
                dUsuarioDadosPessoais user = new dUsuarioDadosPessoais();
                return user.gravarUser(usuario);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        #endregion

        #region Delatar Usuario

        public bool deletarUser(int? id)
        {
            try
            {
                dUsuarioDadosPessoais user = new dUsuarioDadosPessoais();
                return user.deletarUser(id);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        #endregion
    }
}
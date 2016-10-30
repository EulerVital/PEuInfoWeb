using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using PEuInfoWeb.Camadas.ENT;
using PEuInfoWeb.Camadas.DAO;

namespace PEuInfoWeb.Camadas.NEG
{
    public class nAdm
    {
        #region Explicação da classe
        // Essa classe é responsalvel por fazer a conexão entre a .cs da pagina e a classe dAdm   
        #endregion

        #region Lista Administrador
        public List<eAdm> listaAdms(string nome, string email, string senha)
        {
            try
            {
                dAdm adm = new dAdm();
                return adm.listarAdms(nome, email,senha);
            }
            catch (Exception e)
            {
                throw e;
            }
        }
        #endregion

        #region Cadastrar e Alterar Administrador

        public bool gravarAdm(int? id, string nome, string email, string senha)
        {
            try
            {
                dAdm adm = new dAdm();
                return adm.gravarAdm(id, nome, email, senha);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        #endregion

        #region Delatar Administrador

        public bool deletarAdm(int? id)
        {
            try
            {
                dAdm adm = new dAdm();
                return adm.deletarAdm(id);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        #endregion
    }
}
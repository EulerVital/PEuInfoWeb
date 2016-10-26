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
        
        public List<eAdm> LoginAdm(string nome, string email, string senha)
        {
            try
            {
                dAdm adm = new dAdm();
                return adm.ListarAdms(nome, email,senha);
            }
            catch (Exception e)
            {
                throw e;
            }
        } 
    }
}
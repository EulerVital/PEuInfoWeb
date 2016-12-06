using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PEuInfoWeb.Camadas.ENT
{
    public class eLoginUser
    {
        public int Id { get; set; }
        public int idUser { get; set; }
        public string Nome { get; set; }
        public string Email { get; set; }
        public string Senha { get; set; }
        public int status { get; set; }
        public DateTime DataLogado { get; set; }
    }
}
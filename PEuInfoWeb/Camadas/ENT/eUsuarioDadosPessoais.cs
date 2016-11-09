using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PEuInfoWeb.Camadas.ENT
{
    public class eUsuarioDadosPessoais
    {
        public int Id { get; set;}
        public string Nome { get; set; }
        public string Email { get; set; }
        public string Senha { get; set; }
        public string Telefone { get; set; }
        public string Celular { get; set; }
        public string DataNascimento { get; set; }


    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PEuInfoWeb.Camadas.ENT;
using PEuInfoWeb.Camadas.NEG;

namespace PEuInfoWeb.Paginas
{
    public partial class peuLoginAdm : System.Web.UI.Page
    {

        eUsuarioDadosPessoais usuario;
        nUsuarioDadosPessoais user;

        #region Eventos
        protected void lbSalvar_Click(object sender, EventArgs e)
        {
            usuario = new eUsuarioDadosPessoais();
            user = new nUsuarioDadosPessoais();

            usuario.Nome = txtNome.Text;
            usuario.Email = txtEmail.Text;
            usuario.Senha = txtSenha.Text;
            usuario.Telefone = txtTelefone.Text;
            usuario.Celular = txtCelular.Text;
            txtDataNasc.Text = txtDataNasc.Text.Replace("/", "");
            usuario.DataNascimento = txtDataNasc.Text;

            if (user.gravarUser(usuario))
            {
                Response.Write("<script language='javascript'>alert('Cadastro efetuado com Sucesso !!')</script>");
            }else
            {
                Response.Write("<script language='javascript'>alert('Erro ao efetuado o cadastro !!')</script>");
            }

            LimparCampos();

        }

        #endregion

        #region Metodos
        private void LimparCampos()
        {
            txtNome.Text = "";
            txtEmail.Text = "";
            txtConfEmail.Text = "";
            txtConfirmarSenha.Text = "";
            txtSenha.Text = "";
            txtTelefone.Text = "";
            txtCelular.Text = "";
            txtDataNasc.Text = "";
        }
        #endregion
    }
}
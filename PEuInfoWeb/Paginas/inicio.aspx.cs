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

        protected void Page_Load(object sender, EventArgs e)
        {
            LimparCampos();
        }

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

            if (user.gravarUser(usuario) > 0)
            {
                Response.Write("<script language='javascript'>alert('Cadastro efetuado com Sucesso !!')</script>");
            }
            else
            {
                Response.Write("<script language='javascript'>alert('Você já possui cadastro !!')</script>");
            }

            LimparCampos();

        }

        protected void lbLogar_Click(object sender, EventArgs e)
        {
            eLoginUser logar = new eLoginUser();

            logar = nLoginUser.LogarUser(txtLoginEmail.Text, txtLoginSenha.Text);
            logar.status = 1;
            logar.Email = txtLoginEmail.Text;
            logar.Senha = txtLoginSenha.Text;
            if(nLoginUser.GravarLogin(logar) > 0)
            {
                Response.Redirect("inicio2.aspx");
            }else
            {
                Response.Write("<script language='javascript'>alert('Login não encontrado !')</script>");
            }
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
<%@ Page Title="Login Administrador" Language="C#" MasterPageFile="~/Paginas/PEuInfoWeb.Master" AutoEventWireup="true" CodeBehind="inicio.aspx.cs" Inherits="PEuInfoWeb.Paginas.peuLoginAdm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="conteudo" runat="server">
    <form id="form1" runat="server">
    <asp:Panel ID="pnPrincinpal" runat="server" CssClass="container" Height="52px">
      <asp:Panel ID="IdPanelCadas" runat="server"  CssClass="panel panel-primary center-block" Width="800px">
          <div class="panel-heading">
              <h3 class="panel-title">Cadastro-Se</h3>
          </div>
          <div class="panel-body">
              <div class="col-md-6 pull-left"> 
                  <label>Nome de Usuário: </label>
                  <div class="input-group">
                      <span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
                      <asp:TextBox ID="txtNome" runat="server" placeholder="NomeSobrenome *" CssClass="form-control"></asp:TextBox>
                  </div>
                  <label>Email: </label>
                   <div class="input-group">
                        <span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span></span>
                        <asp:TextBox ID="txtEmail" runat="server" placeholder="exemplo@exemplo.com.br *" CssClass="form-control"></asp:TextBox>
                  </div>
                  <label>Confirma Email: </label>
                  <div class="input-group">
                      <span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span></span>
                      <asp:TextBox ID="txtConfEmail" runat="server" placeholder="exemplo@exemplo.com.br *" CssClass="form-control"></asp:TextBox>
                  </div>
                  <label>Telefon Celular: </label>
                  <div class="input-group">
                      <span class="input-group-addon"><span class="glyphicon glyphicon glyphicon-phone"></span></span>
                      <asp:TextBox ID="txtCelular" runat="server" placeholder="(XXX) XXXXX-XXXX *" CssClass="form-control"></asp:TextBox>
                  </div>
              </div>
              <div class="col-md-6 pull-right">
                   <label>Telefone Fixo: </label>
                  <div class="input-group">
                      <span class="input-group-addon"><span class="glyphicon glyphicon-phone-alt"></span></span>
                      <asp:TextBox ID="txtTelefone" runat="server" placeholder="(XXX) XXXX-XXXX" CssClass="form-control"></asp:TextBox>
                  </div>
                  <label>Data de Nascimento: </label>
                  <div class="input-group">
                      <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
                      <asp:TextBox ID="txtDataNasc" runat="server" placeholder="00/00/0000  *" CssClass="form-control"></asp:TextBox>
                  </div>
                  <label>Senha: </label>
                  <div class="input-group">
                      <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                      <asp:TextBox ID="txtSenha" runat="server" placeholder="******" CssClass="form-control" type="password"></asp:TextBox>
                  </div>
                  <label>Confirmar Senha: </label>
                  <div class="input-group">
                      <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                      <asp:TextBox ID="txtConfirmarSenha" runat="server" placeholder="******" CssClass="form-control" type="password"></asp:TextBox>
                  </div>
              </div>
              <div class="col-md-3">
                <asp:LinkButton ID="lbSalvar" runat="server" ValidationGroup="salvar" CssClass="btn btn-primary navbar-btn" OnClick="lbSalvar_Click"><span class="glyphicon glyphicon-ok"> Salvar</span></asp:LinkButton> 
              </div>
          </div>

          <asp:RequiredFieldValidator runat="server" ValidationGroup="salvar" ID="rfvNome" ControlToValidate="txtNome" ForeColor="Red" ErrorMessage="Digite seu Nome de Usuário">
          </asp:RequiredFieldValidator>
          <asp:RequiredFieldValidator runat="server" ValidationGroup="salvar" ID="rfvEmail" ControlToValidate="txtEmail" ForeColor="Red" ErrorMessage="Digite seu Email">
          </asp:RequiredFieldValidator>
          <asp:RequiredFieldValidator runat="server" ValidationGroup="salvar" ID="rfvConfEmail" ControlToValidate="txtConfEmail" ForeColor="Red" ErrorMessage="Digite a Confirmação do Email">
          </asp:RequiredFieldValidator>
          <asp:RequiredFieldValidator runat="server" ValidationGroup="salvar" ID="rfvDataNasc" ControlToValidate="txtDataNasc" ForeColor="Red" ErrorMessage="Digite sua Data de Nascimento">
          </asp:RequiredFieldValidator>
          <asp:RequiredFieldValidator runat="server" ValidationGroup="salvar" ID="rfvSenha" ControlToValidate="txtSenha" ForeColor="Red" ErrorMessage="Digite sua Senha">
          </asp:RequiredFieldValidator>
          <asp:RequiredFieldValidator runat="server" ValidationGroup="salvar" ID="rfvConfSenha" ControlToValidate="txtConfirmarSenha" ForeColor="Red" ErrorMessage="Digite a Confirmação da Senha">
          </asp:RequiredFieldValidator>

          <asp:ValidationSummary runat="server" ValidationGroup="salvar" ID="vsErro" ShowMessageBox="true" />

      </asp:Panel>
  </asp:Panel>
  </form>    
     <script>
        jQuery(function($){
            $("#<%=txtDataNasc.ClientID%>").mask("99/99/9999");
            $("#<%=txtTelefone.ClientID%>").mask("(999) 9999-9999");
            $("#<%=txtCelular.ClientID%>").mask("(999) 99999-9999");
        });
    </script>
</asp:Content>

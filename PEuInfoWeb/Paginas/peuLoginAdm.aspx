<%@ Page Title="Login Administrador" Language="C#" MasterPageFile="~/Paginas/PEuInfoWeb.Master" AutoEventWireup="true" CodeBehind="peuLoginAdm.aspx.cs" Inherits="PEuInfoWeb.Paginas.peuLoginAdm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="conteudo" runat="server">
    <form id="form1" runat="server">
    <asp:Panel ID="pnPrincinpal" runat="server" CssClass="container" Height="52px">
      <asp:Panel ID="IdPanelCadas" runat="server"  CssClass="panel panel-primary center-block" Width="600px">
          <div class="panel-heading">
              <h3 class="panel-title">Cadastro-Se</h3>
          </div>
          <div class="panel-body">
              <div class="col-md-6 pull-left"> 
                  <label>Nome de Usuário: </label>
                  <div class="input-group">
                      <span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
                      <asp:TextBox ID="txtNome" runat="server" placeholder="NomeSobrenome *" CssClass="form-control">
                      </asp:TextBox>
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
                      <asp:TextBox ID="txtDataNasc" runat="server" placeholder="00/00/0000" CssClass="form-control"></asp:TextBox>
                  </div>
                  <label>Senha: </label>
                  <div class="input-group">
                      <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                      <asp:TextBox ID="txtSenha" runat="server" placeholder="******" CssClass="form-control" type="password"></asp:TextBox>
                  </div>
                  <label>Confirmar Senha: </label>
                  <div class="input-group">
                      <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                      <asp:TextBox ID="txtConfirmar" runat="server" placeholder="******" CssClass="form-control" type="password"></asp:TextBox>
                  </div>
              </div>
              <div class="col-md-3">
                <asp:LinkButton ID="lbSalvar" runat="server" CssClass="btn btn-primary navbar-btn"><span class="glyphicon glyphicon-ok"> Salvar</span></asp:LinkButton> 
              </div>
          </div>
      </asp:Panel>
  </asp:Panel>
  </form>
</asp:Content>

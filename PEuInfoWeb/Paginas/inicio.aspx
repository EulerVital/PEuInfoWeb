﻿<%@ Page Title="Login Administrador" Language="C#" MasterPageFile="~/Paginas/PEuInfoWeb.Master" AutoEventWireup="true" CodeBehind="inicio.aspx.cs" Inherits="PEuInfoWeb.Paginas.peuLoginAdm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="conteudo" runat="server">
    <form id="form1" runat="server">
            <div class="navbar-form pull-right form-inline">
                <asp:TextBox ID="txtLoginEmail" runat="server" CssClass="form-control" placeholder="exemplo@exemplo.com.br" TextMode="Email"></asp:TextBox>
                <asp:TextBox ID="txtLoginSenha" runat="server" CssClass="form-control" placeholder="*********" TextMode="Password"></asp:TextBox>
                <asp:LinkButton ID="lbLogar" runat="server" CssClass="btn btn-primary" Text="Entrar" ValidationGroup="vgLogar" OnClick="lbLogar_Click"></asp:LinkButton> 
            </div>   

    <asp:Panel ID="pnPrincinpal" runat="server" CssClass="container input-group row" Height="100%" Width="100%" >
      <asp:Panel ID="IdPanelCadas" runat="server"  CssClass="panel panel-body panel-primary center-block" Width="800px">
          <div class="panel-heading">
              <h3 class="panel-title">Cadastra-se</h3>
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

          <asp:RequiredFieldValidator runat="server" ValidationGroup="salvar" ID="rfvNome" ControlToValidate="txtNome" ErrorMessage="Digite seu Nome de Usuário" Display="None">
          </asp:RequiredFieldValidator>
          <asp:RequiredFieldValidator runat="server" ValidationGroup="salvar" ID="rfvEmail" ControlToValidate="txtEmail" ErrorMessage="Digite seu Email" Display="None">
          </asp:RequiredFieldValidator>
          <asp:RequiredFieldValidator runat="server" ValidationGroup="salvar" ID="rfvConfEmail" ControlToValidate="txtConfEmail" ErrorMessage="Digite a Confirmação do Email" Display="None">
          </asp:RequiredFieldValidator>
          <asp:RequiredFieldValidator runat="server" ValidationGroup="salvar" ID="rfvDataNasc" ControlToValidate="txtDataNasc" ErrorMessage="Digite sua Data de Nascimento" Display="None">
          </asp:RequiredFieldValidator>
          <asp:RequiredFieldValidator runat="server" ValidationGroup="salvar" ID="rfvSenha" ControlToValidate="txtSenha" ErrorMessage="Digite sua Senha" Display="None">
          </asp:RequiredFieldValidator>
          <asp:RequiredFieldValidator runat="server" ValidationGroup="salvar" ID="rfvConfSenha" ControlToValidate="txtConfirmarSenha" ErrorMessage="Digite a Confirmação da Senha" Display="None">
          </asp:RequiredFieldValidator>
          <asp:RequiredFieldValidator runat="server" ValidationGroup="vgLogar" ID="rfvEmailLogin" ControlToValidate="txtLoginEmail" ErrorMessage="Digite seu Email para Logar" Display="None">
          </asp:RequiredFieldValidator>
          <asp:RequiredFieldValidator runat="server" ValidationGroup="vgLogar" ID="rfvSenhaLogin" ControlToValidate="txtLoginSenha" ErrorMessage="Digite sua Senha para Logar" Display="None">
          </asp:RequiredFieldValidator>


          <asp:ValidationSummary runat="server" ValidationGroup="salvar" ID="vsErroCads"  ShowMessageBox="true" ShowSummary="false"/>
          <asp:ValidationSummary runat="server" ValidationGroup="vgLogar" ID="vsErroLogin"  ShowMessageBox="true" ShowSummary="false"/>

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

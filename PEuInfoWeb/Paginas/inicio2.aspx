<%@ Page Title="PeuInfoWeb" Language="C#" MasterPageFile="~/Paginas/PEuInfoWeb.Master" AutoEventWireup="true" CodeBehind="inicio2.aspx.cs" Inherits="PEuInfoWeb.Paginas.inicio2" %>
<%@ Register src="UserControls/ucCSharp.ascx" tagname="ucCSharp" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="conteudo" runat="server">
<link href="../bootstrap/Content/bootstrap.min.css"  rel="stylesheet"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <form runat="server">
        <div class="row panel" style="background-color:#FFF;">
            <div class="container col-md-offset-2">
                <div class="col-md-2 form-group btn btn-primary">
                    <h3 class="h3">C#</h3>
                    <small class="small">C# .NET Microsoft</small>
                    <div class="form-group">  
                       <button type="button" class="btn btn-primary" data-toggle="collapse" data-target="#divCsharp">Fazer Cadastro</button>                       
                    </div>
                </div>
                <div class="col-md-2 form-group btn btn-success">
                    <h3>JAVA</h3>
                    <small>JAVA Desktop Orecle</small>
                    <div class="form-group">
                        <a class="btn btn-success" role="button" data-toggle="collapse" href="#divJava" aria-expanded="false" aria-controls="collapseExample">
                            Fazer Cadastro
                        </a>
                    </div>
                </div>
                <div class="col-md-2 form-group btn btn-default">
                    <h3>Python</h3>
                    <small>Python Desktop python</small>
                    <div class="form-group">
                        <a class="btn btn-default" role="button" data-toggle="collapse" href="#divPython" aria-expanded="false" aria-controls="collapseExample">
                            Fazer Cadastro
                        </a>
                    </div>
                </div>
                <div class="col-md-2 form-group btn btn-info">
                    <h3>C</h3>
                    <small>C Desktop C </small>
                    <div class="form-group">
                        <a class="btn btn-info" role="button" data-toggle="collapse" href="#divC" aria-expanded="false" aria-controls="collapseExample">
                            Fazer Cadastro
                        </a>
                    </div>
                </div>
                <div class="col-md-2 form-group btn btn-danger">
                    <h3>PHP</h3>
                    <small>PHP Web</small>
                    <div class="form-group">
                        <a class="btn btn-danger" role="button" data-toggle="collapse" href="#divPhp" aria-expanded="false" aria-controls="collapseExample">
                            Fazer Cadastro
                        </a>
                    </div>
                </div> 
        </div>
        </div><br />
          <asp:Panel id="divCsharp" runat="server" CssClass="collapse panel-primary">
              <div class="panel-heading">
                  <h2 class="panel-title">CSharp com .NET Microsoft</h2>
                  <uc1:ucCSharp ID="uccsharp" runat="server" />
              </div>
         </asp:Panel>         
        <asp:Panel id="divJava" class="collapse panel-success" runat="server">
              <div class="panel-heading">
                  <h2 class="panel-title">Java, não vai ser facil, mais garanto que não vai se arrepender</h2>
              </div>
         </asp:Panel>
         <asp:Panel id="divPython" class="collapse panel-default" runat="server">
              <div class="panel-heading">
                  <h2 class="panel-title">Python uma linguagem facil é util, ela te espera.</h2>
              </div>
         </asp:Panel>
         <asp:Panel id="divC" class="collapse panel-info" runat="server">
              <div class="panel-heading">
                  <h2 class="panel-title">C venha conhecer uma das linguagesn mais antiga e atuais até o momento.</h2>
              </div>
         </asp:Panel>
         </form>
         <asp:Panel id="divPhp" class="collapse panel-danger" runat="server">
              <div class="panel-heading">
                  <h2 class="panel-title">PHP, se aprofunde no mundo desconhecido de PHP.</h2>
              </div>
         </asp:Panel>
    <form>
    </form>
</asp:Content>

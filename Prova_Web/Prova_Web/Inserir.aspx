<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Inserir.aspx.cs" Inherits="Prova_Web.Inserir" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="text-primary text-center" style="margin-top:30px">
        <h2>Cadastro de Funcionario</h2>
    </div>
    <div class="row" style="margin-top:15px">
        <div class="col-md-12 " >
            <label>Nome:</label>
            <asp:RequiredFieldValidator ID="rfvNome" runat="server" ErrorMessage="*" ForeColor="Red"
                ControlToValidate="txtNome"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtNome" CssClass="form-control" runat="server" MaxLength="50"></asp:TextBox>
        </div>
    </div>
    <div class="row" style="margin-top:15px">
        <div class="col-md-5 " >
            <label>Sexo:</label>
            <asp:RequiredFieldValidator ID="rfvSexo" runat="server" ErrorMessage="*" ForeColor="Red"
                ControlToValidate="ddlSexo"></asp:RequiredFieldValidator>
            <asp:DropDownList ID="ddlSexo" runat="server" CssClass="form-control">
                <asp:ListItem Selected="True" Text="" Value=""></asp:ListItem>
                <asp:ListItem Value="M">Masculino</asp:ListItem>
                <asp:ListItem Value="F">Feminino</asp:ListItem>
             </asp:DropDownList>
        </div>
        <div class="col-md-3 " >
            <label>Data de nascimento:</label>
            <asp:RequiredFieldValidator ID="rfvDataNasc" runat="server" ErrorMessage="*" ForeColor="Red"
                ControlToValidate="txtDataNasc"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtDataNasc" CssClass="form-control" runat="server" MaxLength="50"></asp:TextBox>
        </div>
        <div class="col-md-4 " >
            <label>Numero da Carteira de Trabalho:</label>
            <asp:RequiredFieldValidator ID="rfvCarteira" runat="server" ErrorMessage="*" ForeColor="Red"
                ControlToValidate="txtCarteira"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtCarteira" CssClass="form-control" runat="server" MaxLength="50"></asp:TextBox>
        </div>
    </div>
    <div class="row" style="margin-top:15px">
        <div class="col-md-3 " >
            <label>Telefone Fixo:</label>
            <asp:RequiredFieldValidator ID="rfvTelfixo" runat="server" ErrorMessage="*" ForeColor="Red"
                ControlToValidate="txtTelfixo"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtTelfixo" CssClass="form-control" runat="server" MaxLength="50"></asp:TextBox>
        </div>
        <div class="col-md-3 " >
            <label>Telefone Celular:</label>
            <asp:RequiredFieldValidator ID="rfvTelcel" runat="server" ErrorMessage="*" ForeColor="Red"
                ControlToValidate="txtTelcel"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtTelcel" CssClass="form-control" runat="server" MaxLength="50"></asp:TextBox>
        </div>
        <div class="col-md-3 " >
            <label>Email:</label>
            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="*" ForeColor="Red"
                ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server" MaxLength="50"></asp:TextBox>
        </div>
        <div class="col-md-3 " >
            <label>Endereço:</label>
            <asp:RequiredFieldValidator ID="rfvEndere" runat="server" ErrorMessage="*" ForeColor="Red"
                ControlToValidate="txtEndere"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtEndere" CssClass="form-control" runat="server" MaxLength="50"></asp:TextBox>
        </div>
    </div>
    <div class="row" style="margin-top:15px">
        <div class="col-md-12 text-right">
            <asp:Button ID="btnCadastrar" Text="Cadastrar" runat="server" CssClass="btn btn-primary" OnClick="btnCadastrar_Click"/>
        </div>
    </div>
    <div class="row" style="margin-top:15px">
        <div class="col-md-12 text-right">
            <asp:Label ID="lblResultado" runat="server" Text=""></asp:Label>
        </div>
    </div>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Inserir2.aspx.cs" Inherits="Prova_Web.Inserir2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="text-primary text-center" style="margin-top:30px">
        <h2>Cadastro de Alunos</h2>
    </div>
    <div class="row" style="margin-top:15px">
        <div class="col-md-2 " >
            <label>RA:</label>
            <asp:RequiredFieldValidator ID="rfvRa" runat="server" ErrorMessage="*" ForeColor="Red"
                ControlToValidate="txtRa"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtRa" CssClass="form-control" runat="server" MaxLength="50"></asp:TextBox>
        </div>
        <div class="col-md-10 " >
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
            <label>Email:</label>
            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="*" ForeColor="Red"
                ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server" MaxLength="50"></asp:TextBox>
        </div>
    </div>
    <div class="row" style="margin-top:15px">
        <div class="col-md-3 " >
            <label>Endereço:</label>
            <asp:RequiredFieldValidator ID="rfvEndereco" runat="server" ErrorMessage="*" ForeColor="Red"
                ControlToValidate="txtEndereco"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtEndereco" CssClass="form-control" runat="server" MaxLength="50"></asp:TextBox>
        </div>
        <div class="col-md-3 " >
            <label>Curso:</label>
            <asp:RequiredFieldValidator ID="rfvCurso" runat="server" ErrorMessage="*" ForeColor="Red"
                ControlToValidate="txtCurso"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtCurso" CssClass="form-control" runat="server" MaxLength="50"></asp:TextBox>
        </div>
        <div class="col-md-3 " >
            <label>Ano de Ingresso:</label>
            <asp:RequiredFieldValidator ID="rfvAno" runat="server" ErrorMessage="*" ForeColor="Red"
                ControlToValidate="txtAno"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtAno" CssClass="form-control" runat="server" MaxLength="50"></asp:TextBox>
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

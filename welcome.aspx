<%@ Page Title="Acerca de" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="welcome.aspx.cs" Inherits="welcome" %>
<%--<%@ Page Language="C#" AutoEventWireup="true" CodeFile="welcome.aspx.cs" Inherits="welcome" %>--%>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <p></p>
    <div class="alert alert-success">
        <%--<strong>Bienvenido!</strong> You should <a href="#" class="alert-link">read this message</a>.--%>
        <strong>Bienvenido!</strong>
    </div>
    <p></p>
    <div class="container"> 
        <form>
            <div class="form-group">
                <label for="usr">Ingresa tu nombre:</label>
                <%--<input type="text" class="form-control" id="usr">--%>
                <asp:TextBox ID="txt_usuario" runat="server" CssClass="form-control" AutoCompleteType="None"></asp:TextBox>
            </div>
        </form>
    </div>
    <div class="container2">    
        <asp:Button ID="btn_continuar" runat="server" CssClass="btn btn-info" Text="Continuar ASP" 
            OnClick="btn_continuar_Click" UseSubmitBehavior="false" OnClientClick="this.disbaled=true;" />
<%--        <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#reto">Continuar</button>
        <div id="reto" class="collapse">
            <p></p>
            Perfecto, prepárate para la mejor mente del mundo.
            <a href="/Desafio" runat="server" button type="button" class="btn btn-success" onclick="">Reto</a>
            <%--<a href="~/Desafio" class="btn btn-success" role="button">Reto</a>--%>
        <%--</div>--%>
    </div>
</asp:Content>
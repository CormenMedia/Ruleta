<%@ Page Title="Ruleta Matematicas" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="acertijos.aspx.cs" Inherits="acertijos" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h3>ACERTIJOS</h3>
    <br />
    <div id="q1" runat="server" style="display:block">
        <asp:Image ID="imagen01" runat="server" ImageUrl="" />
        <asp:RadioButtonList ID="radq1" runat="server" RepeatDirection="Vertical">
            <asp:ListItem Text="Respuesta 1" Value="0"></asp:ListItem>
            <asp:ListItem Text="Respuesta 2" Value="1"></asp:ListItem>
            <asp:ListItem Text="Respuesta 3" Value="2"></asp:ListItem>
        </asp:RadioButtonList>
        <asp:Button ID="cmd_q1" runat="server" UseSubmitBehavior="false" OnClientClick="this.disabled=true;" 
            OnClick="cmd_q1_Click" Text="Continuar" />
    </div>
    <div id="q2" runat="server" style="display:block">
        <asp:Image ID="imagen02" runat="server" ImageUrl="" />
        <asp:RadioButtonList ID="radq2" runat="server" RepeatDirection="Vertical">
            <asp:ListItem Text="Respuesta 1" Value="0"></asp:ListItem>
            <asp:ListItem Text="Respuesta 2" Value="1"></asp:ListItem>
            <asp:ListItem Text="Respuesta 3" Value="2"></asp:ListItem>
        </asp:RadioButtonList>
        <asp:Button ID="cmd_q2" runat="server" UseSubmitBehavior="false" OnClientClick="this.disabled=true;" 
            OnClick="cmd_q2_Click" Text="Continuar" />
    </div>
    <div id="q3" runat="server" style="display:block">
        <asp:Image ID="imagen03" runat="server" ImageUrl="" />
        <asp:RadioButtonList ID="radq3" runat="server" RepeatDirection="Vertical">
            <asp:ListItem Text="Respuesta 1" Value="0"></asp:ListItem>
            <asp:ListItem Text="Respuesta 2" Value="1"></asp:ListItem>
            <asp:ListItem Text="Respuesta 3" Value="2"></asp:ListItem>
        </asp:RadioButtonList>
        <asp:Button ID="cmd_q3" runat="server" UseSubmitBehavior="false" OnClientClick="this.disabled=true;" 
            OnClick="cmd_q3_Click" Text="Continuar" />
    </div>
    <div id="result" runat="server" style="display:block">
        <asp:Label ID="usuario" runat="server" ></asp:Label>
        <br />
        Obtuviste un total de:
        <asp:Label ID="puntuacion" runat="server"></asp:Label> &nbsp; puntos <br />
        <p></p>
        <asp:Button ID="cmd_terminar" runat="server" UseSubmitBehavior="false" OnClientClick="this.disabled=true;" 
            OnClick="cmd_terminar_Click" Text="Terminar" />
    </div>
</asp:Content>
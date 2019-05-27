<%@ Page Title="Ruleta Matematicas" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="adivinanzas.aspx.cs" Inherits="adivinanzas" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h3>ADIVINANZAS</h3>
        <div id="q1" runat="server" style="display:block">
        <asp:RadioButtonList ID="radq1" runat="server" RepeatDirection="Vertical">
            <asp:ListItem Text="Texto1" Value="0"></asp:ListItem>
            <asp:ListItem Text="Texto2" Value="1"></asp:ListItem>
            <asp:ListItem Text="Texto3" Value="2"></asp:ListItem>
        </asp:RadioButtonList>
        <asp:Button ID="cmd_q1" runat="server" UseSubmitBehavior="false" OnClientClick="this.disabled=true;" 
            OnClick="cmd_q1_Click" Text="Continuar" />
    </div>
    <div id="q2" runat="server" style="display:block">
        <asp:RadioButtonList ID="radq2" runat="server" RepeatDirection="Vertical">
            <asp:ListItem Text="Texto1" Value="0"></asp:ListItem>
            <asp:ListItem Text="Texto2" Value="1"></asp:ListItem>
            <asp:ListItem Text="Texto3" Value="2"></asp:ListItem>
        </asp:RadioButtonList>
        <asp:Button ID="cmd_q2" runat="server" UseSubmitBehavior="false" OnClientClick="this.disabled=true;" 
            OnClick="cmd_q2_Click" Text="Continuar" />
    </div>
    <div id="q3" runat="server" style="display:block">
        <asp:RadioButtonList ID="radq3" runat="server" RepeatDirection="Vertical">
            <asp:ListItem Text="Texto1" Value="0"></asp:ListItem>
            <asp:ListItem Text="Texto2" Value="1"></asp:ListItem>
            <asp:ListItem Text="Texto3" Value="2"></asp:ListItem>
        </asp:RadioButtonList>
        <asp:Button ID="cmd_q3" runat="server" UseSubmitBehavior="false" OnClientClick="this.disabled=true;" 
            OnClick="cmd_q3_Click" Text="Continuar" />
    </div>
    <div id="result" runat="server" style="display:block">
        <asp:Button ID="cmd_terminar" runat="server" UseSubmitBehavior="false" OnClientClick="this.disabled=true;" 
            OnClick="cmd_terminar_Click" Text="Terminar" />
    </div>
</asp:Content>
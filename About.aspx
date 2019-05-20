<%@ Page Title="Acerca de" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    <h3>Página proyecto de matemáticas 3</h3>
    <p></p>
    <div class="container">
        <h2>Participantes</h2>
        <p></p>            
        <table class="table">
            <thead>
                <tr>
                    <th>Nombres</th>
                    <th>Apellidos</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Maya Vanessa</td>
                    <td>Corona Mendoza</td>
                </tr>
                <tr>
                    <td>Yazmin Estefani</td>
                    <td>Ramos Nava</td>
                </tr>
                <tr>
                    <td>Jesus Alejandro</td>
                    <td>Serrano Cardoso</td>
                </tr>
            </tbody>
        </table>
    </div>
</asp:Content>

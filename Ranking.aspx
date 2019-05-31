<%@ Page Title="Acerca de" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Ranking.aspx.cs" Inherits="Ranking" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    <h3>Mejores Posiciones</h3>
    <p></p>
    <table runat="server" id="posiciones">
        <tr align="center">
            <td>
                <%if (grdRanking.Items.Count > 0) { %>
                <asp:DataGrid ID="grdRanking" runat="server" AutoGenerateColumns="false" AllowPaging="false" 
                    GridLines="vertical" CellPadding="4" PageSize="100">
                    <SelectedItemStyle BackColor="#E2DED6" Font-Bold="true" ForeColor="#333333" />
                    <AlternatingItemStyle CssClass="GridAlternItem" />
                    <ItemStyle CssClass="Griditem" />
                    <HeaderStyle HorizontalAlign="Center" CssClass="GridHeader" Font-Bold="true" />
                    <Columns>
                        <asp:BoundColumn DataField="cd_id" HeaderText="Número" Visible="false">
                            <HeaderStyle Font-Bold="true" Width="40px" HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Right" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="nb_usuario" HeaderText="Participante" Visible="true">
                            <HeaderStyle Font-Bold="true" Width="40px" HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Right" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="cd_grado" HeaderText="Grado" Visible="false">
                            <HeaderStyle Font-Bold="true" Width="40px" HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Right" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="nu_puntos" HeaderText="Puntuación" Visible="true">
                            <HeaderStyle Font-Bold="true" Width="40px" HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Right" />
                        </asp:BoundColumn>
                    </Columns>
                    <FooterStyle BackColor="#5D789D" Font-Bold="true" ForeColor="White" />
                </asp:DataGrid>
                <% } else { %>
                    <font color="#800517"><b>No hay datos registrados</b></font>
                <% } %>
            </td>
        </tr>
    </table>
</asp:Content>

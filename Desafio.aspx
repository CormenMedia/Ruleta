<%@ Page Title="Ruleta Matematicas" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Desafio.aspx.cs" Inherits="Desafio" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <table style="width: 100%;">
        <tr>
            <td style="width:20%">
                <input type="button" value="Girar" onclick="miRuleta.startAnimation();" />
            </td>
            <td>        
                <canvas id="canvas" height="400" width="400"></canvas>
                <script>
                let miRuleta = new Winwheel({
                    'numSegments': 6,
                    'outerRadius': 190,
                    'textFontSize': 16,
                    'textMargin': 0,
                    'segments': [
                        { 'fillstyle': '#eae56f', 'text': 'Algebra' },
                        { 'fillstyle': '#89f26e', 'text': 'Acertijos' },
                        { 'fillstyle': '#7de6ef', 'text': 'Trigonometria' },
                        { 'fillstyle': '#e7706f', 'text': 'Aritmética' },
                        { 'fillstyle': '#eae56f', 'text': 'Adivinanzas' },
                        { 'fillstyle': '#89f26e', 'text': 'Problemas' },
                    ],
                    'animation': {
                        'type': 'spinToStop',
                        'duration': 3,
                        'callbackFinished': 'Mensaje()',
                        'callbackAfter': 'dibujarIndicador()'
                    }
                });

                function Mensaje() {
                    var SegmentoSeleccionado = miRuleta.getIndicatedSegment();
                    alert("Elemento seleccionado:" + SegmentoSeleccionado.text + "!");
                    //Reinicio de la ruleta (Valor Inicial)
                    miRuleta.stopAnimation(false);
                    miRuleta.rotationAngle = 0;
                    //miRuleta.draw();
                    dibujarIndicador();
                }

                dibujarIndicador();

                function dibujarIndicador() {
                    var ctx = miRuleta.ctx;
                    ctx.strokeStyle = 'navy';
                    ctx.fillStyle = 'black';
                    ctx.lineWidth = 2;
                    ctx.beginPath();
                    ctx.moveTo(170, 0);
                    ctx.lineTo(230, 0);
                    ctx.lineTo(200, 40);
                    ctx.lineTo(171, 0);
                    ctx.stroke();
                    ctx.fill();
                }
                </script>
            </td>
            <td>
                <asp:Label ID="mensaje_res" runat="server"></asp:Label>
            </td>
            <td>
                <img id="sheldon" alt="" height="300" src="images/bbtag1330_1024x.jpg" width="300" /></td>
        </tr>
    </table>
</asp:Content>
<%@ Page Title="Ruleta Matematicas" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Desafio.aspx.cs" Inherits="Desafio" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div id="seleccion" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Ruleta del reto Sheldon</h4>
                </div>
                <div class="modal-body">
                    <p>Jugarás con: &nbsp; 
                        <label id="resultado"></label>
                    </p>
                </div>
                <div class="modal-footer">
                    <input type="button" class="btn btn-default" data-dismiss="modal" onclick="nueva_pagina();" value="Continuar" />
                    <%--<asp:Button ID="btn_ruleta" runat="server" OnClick="btn_ruleta_Click"  />--%>
                </div>
            </div>
        </div>
    </div>
    <br />
    <br />
    <div class="well">Ruleta de la Suerte</div>
    <table style="width:100%">
        <tr>
            <td>
                Buena suerte <asp:Label ID="lbl_usuario" runat="server" ></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" style="width:20%">
                <input type="button" value="Girar" class="btn btn-primary" onclick="miRuleta.startAnimation();" />
            </td>
        </tr>
        </table>
    <table style="width:100%">
        <tr>
            <td align="center">        
                <canvas id="canvas" height="300" width="300"></canvas>
                <script>
                let miRuleta = new Winwheel({
                    'numSegments': 6,
                    'outerRadius': 150,
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
                    //alert("Elemento seleccionado:" + SegmentoSeleccionado.text + "!");
                    document.querySelector('#resultado').innerText = SegmentoSeleccionado.text;
                    $('#seleccion').modal('show');
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
                    ctx.moveTo(130, 0);
                    ctx.lineTo(180, 0);
                    ctx.lineTo(150, 30);
                    ctx.lineTo(120, 0);
                    ctx.stroke();
                    ctx.fill();
                }

                    function nueva_pagina() {
                        //var pagina = document.getElementById(resultado).innerHTML;
                        //switch (pagina) {
                        //    case 'Acertijos':
                        //        open('/welcome', '_self');
                        //        break;
                        //    default:
                        //        open('/Default', '_self');
                        //}
                        open('/Default', '_self');
                        //var pagina = document.getElementById(resultado).innerHTML;
                        //switch (pagina) {
                        //    case 'Acertijos':
                        //        window.location('~/acertijos', '_self', '');
                        //        break;
                        //    default:
                        //        //window.location('~/default', '_self', '');
                        //        window.location = '~/Default';
                        //}
                    }

                </script>
            </td>
            <%--<td>
                <asp:Label ID="mensaje_res" runat="server"></asp:Label>
            </td>--%>
            <%--<td>
                <img id="sheldon" alt="" height="300" src="images/bbtag1330_1024x.jpg" width="300" /></td>--%>
        </tr>
    </table>
    <table style="width:100%">
        <tr>
            <td>
                <asp:Label ID="mensaje_res" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
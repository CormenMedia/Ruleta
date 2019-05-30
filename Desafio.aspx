<%@ Page Title="Ruleta Matematicas" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Desafio.aspx.cs" Inherits="Desafio" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div id="algebra" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Ruleta del reto Sheldon</h4>
                </div>
                <div class="modal-body">
                    <p>Jugarás con: &nbsp; 
                        <label id="res_algebra"></label>
                    </p>
                </div>
                <div class="modal-footer">
                    <input type="button" class="btn btn-default" data-dismiss="modal" onclick="pag_algebra();" value="Continuar" />
                </div>
            </div>
        </div>
    </div>
    <div id="acertijos" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Ruleta del reto Sheldon</h4>
                </div>
                <div class="modal-body">
                    <p>Jugarás con: &nbsp; 
                        <label id="res_acertijos"></label>
                    </p>
                </div>
                <div class="modal-footer">
                    <input type="button" class="btn btn-default" data-dismiss="modal" value="Continuar" onclick="pag_acertijos();" />
                </div>
            </div>
        </div>
    </div>
    <div id="trigonometria" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Ruleta del reto Sheldon</h4>
                </div>
                <div class="modal-body">
                    <p>Jugarás con: &nbsp; 
                        <label id="res_trigonometria"></label>
                    </p>
                </div>
                <div class="modal-footer">
                    <input type="button" class="btn btn-default" data-dismiss="modal" value="Continuar" onclick="pag_trigonometria();" />
                </div>
            </div>
        </div>
    </div>
    <div id="aritmetica" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Ruleta del reto Sheldon</h4>
                </div>
                <div class="modal-body">
                    <p>Jugarás con: &nbsp; 
                        <label id="res_aritmetica"></label>
                    </p>
                </div>
                <div class="modal-footer">
                    <input type="button" class="btn btn-default" data-dismiss="modal" value="Continuar" onclick="pag_aritmetica();" />
                </div>
            </div>
        </div>
    </div>
    <div id="adivinanzas" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Ruleta del reto Sheldon</h4>
                </div>
                <div class="modal-body">
                    <p>Jugarás con: &nbsp; 
                        <label id="res_adivinanzas"></label>
                    </p>
                </div>
                <div class="modal-footer">
                    <input type="button" class="btn btn-default" data-dismiss="modal" value="Continuar" onclick="pag_adivinanzas();" />
                </div>
            </div>
        </div>
    </div>
    <div id="problemas" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Ruleta del reto Sheldon</h4>
                </div>
                <div class="modal-body">
                    <p>Jugarás con: &nbsp; 
                        <label id="res_problemas"></label>
                    </p>
                </div>
                <div class="modal-footer">
                    <input type="button" class="btn btn-default" data-dismiss="modal" value="Continuar" onclick="pag_problemas();" />
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
                    'numSegments': 5,
                    'outerRadius': 150,
                    'textFontSize': 16,
                    'textMargin': 0,
                    'segments': [
                        { 'fillstyle': '#eae56f', 'text': 'Algebra' },
                        { 'fillstyle': '#89f26e', 'text': 'Acertijos' },
                        { 'fillstyle': '#7de6ef', 'text': 'Trigonometria' },
                        { 'fillstyle': '#e7706f', 'text': 'Aritmética' },
                        //{ 'fillstyle': '#eae56f', 'text': 'Adivinanzas' },
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
                    switch (SegmentoSeleccionado.text) {
                        case 'Algebra':
                            document.querySelector('#res_algebra').innerText = SegmentoSeleccionado.text;
                            $('#algebra').modal('show');
                            break;
                        case 'Acertijos':
                            document.querySelector('#res_acertijos').innerText = SegmentoSeleccionado.text;
                            $('#acertijos').modal('show');
                            break;
                        case 'Trigonometria':
                            document.querySelector('#res_trigonometria').innerText = SegmentoSeleccionado.text;
                            $('#trigonometria').modal('show');
                            break;
                        case 'Aritmética':
                            document.querySelector('#res_aritmetica').innerText = SegmentoSeleccionado.text;
                            $('#aritmetica').modal('show');
                            break;
                        case 'Adivinanzas':
                            document.querySelector('#res_adivinanzas').innerText = SegmentoSeleccionado.text;
                            $('#adivinanzas').modal('show');
                            break;
                        case 'Problemas':
                            document.querySelector('#res_problemas').innerText = SegmentoSeleccionado.text;
                            $('#problemas').modal('show');
                            break;
                    }
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

                    function pag_algebra() {
                        location.replace('/algebra.aspx');
                    }

                    function pag_acertijos() {
                        location.replace('/acertijos.aspx');
                    }

                    function pag_trigonometria() {
                        location.replace('/trigonometria.aspx');
                    }

                    function pag_aritmetica() {
                        location.replace('/aritmetica.aspx');
                    }

                    function pag_adivinanzas() {
                        location.replace('/adivinanzas.aspx');
                    }

                    function pag_problemas() {
                        location.replace('/problemas.aspx');
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
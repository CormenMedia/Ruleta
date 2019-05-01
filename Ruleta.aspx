<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ruleta.aspx.cs" Inherits="Ruleta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <input type="button" value="Girar" onclick="miRuleta.startAnimation();" />
        <br />
        <br />
        <canvas id="canvas" height="400" width="400"></canvas>
        <script>
            var miRuleta = new Winwheel({
                'numSegments': 6,
                'outerRadius': 170,
                'segments': [
                    { 'fillstyle': '#f1c40f', 'text': 'Algebra' },
                    { 'fillstyle': '#2ecc71', 'text': 'Acertijos' },
                    { 'fillstyle': '#e67e22', 'text': 'Trigonometria' },
                    { 'fillstyle': '#e74c3c', 'text': 'Aritmética' },
                    { 'fillstyle': '#e74c3c', 'text': 'Adivinanzas' },
                    { 'fillstyle': '#e74c3c', 'text': 'Problemas' },
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
                miRuleta.draw();
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
        </div>
    </form>
</body>
</html>

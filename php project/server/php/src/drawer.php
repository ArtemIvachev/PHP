<!DOCTYPE HTML>
<html>
    <head>
    <meta charset="utf-8">
    <title>Упражнение 1</title>
    <script>
        function circle(radius)
        {
            var canvas = document.getElementById('circle');
            var obCanvas = canvas.getContext('2d');

            obCanvas.beginPath();
            obCanvas.arc(75, 35, radius, 0, 2*Math.PI, false);
            obCanvas.fillStyle = 'blue';
            obCanvas.fill();
        }
    </script>
    </head>
    <?php
        $radius = "не определено";
        if(isset($_POST["radius"])){
            $radius = $_POST["radius"];
        }
    ?>
    <body onLoad="circle(<?echo $radius?>)">
        <canvas id="circle" style="width:100%; height:100%;"></canvas>
    </body>
</html>
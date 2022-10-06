<!DOCTYPE html>
<html>
    <head>
        <title>Упражнение 1</title>
        <meta charset="utf-8" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    </head>
    <body style="margin: 50px">
        <h3 style="margin-bottom: 17px; text-align: center">Круг кружок</h3>
        <form action="drawer.php" method="POST">
            <label for="radius" class="form-lable" style="margin-bottom: 15px">Радиус</label>
            <input class="form-control" type="text" name="radius" id="radius" style="margin-bottom: 15px" placeholder="Введите радиус">
            <input class="btn btn-primary" type="submit" value="Отправить">
        </form>
    </body>
</html>

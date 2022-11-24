<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>KINOTEMA</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>

<body>
    <form enctype="multipart/form-data" action="loader.php" method="POST">
        <div>
            <input type="hidden" name="MAX_FILE_SIZE" value="2000000" />
            <input class="custom-file-input" style="margin-left: 37%" id="file_field" name="userfile" type="file" />
            <input class="btn btn-primary" style="background-color: #d3b5ff" type="submit" value="Отправить файл" />
        </div>
    </form>


    <?php
    $files = scandir('./files');
    if (count($files) <= 2) {
        echo "<h2>Нет загруженных файлов</h2>";
    } else {
        echo "<h2>Загруженные файлы</h2>";
        foreach ($files as $file) {
            if ($file != "." and $file != "..") {
                echo "<div class='card'><a class='card-body' href='./files/" . $file . "'>" . $file . "</a></div>";
            }
        }
    }
    ?>
</body>

</html>
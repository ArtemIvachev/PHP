<!DOCTYPE HTML>
<html>
    <head>
        <meta charset="utf-8">
        <title>Упражнение 2</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    </head>
    <body>
        <form method="post">
            <input class="form-control" type="text" name="array" style="margin: 15px 15px 5px;" placeholder="Введите массив">
            <button class="btn btn-primary" type="submit" value="Отправить" style="margin: 0px 15px">Отправить</button>
        </form>
        <div style="margin: 15px 15px 5px;">
        <?php
            $lineOfElements = "";

            if(isset($_POST["array"])) {
                $lineOfElements = $_POST["array"];
            }

            $array = explode(', ', $lineOfElements);

            function findMin($list) {
                $minIndex = 0;
                $min = $list[ $minIndex ];
                $size = sizeof( $list );
                for( $i = 1; $i < $size; $i++ )
                {
                    if( $list[ $i ] < $min )
                    {
                        $minIndex = $i;
                        $min = $list[ $minIndex ];
                    }
                }
                return $minIndex;
            }

            function selectionSort($list) {
                $result = [];
                foreach( $list as $val )
                {
                    $minIndex = findMin( $list );
                    array_push( $result, $list[ $minIndex ] );
                    array_splice( $list, $minIndex, 1 );
                }
                return $result;
            }

            $sortArray = implode(", ", selectionSort($array));
            echo($sortArray)
        ?>
        </div>
    </body>
</html>

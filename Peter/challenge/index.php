<?php
    include_once 'component/db_connect.php';
    $sql = "SELECT * FROM songs";
    $result = mysqli_query($connect, $sql);
    $acards= '';
    if(mysqli_num_rows($result)>0){
        while($row = mysqli_fetch_array($result,MYSQLI_ASSOC)){
        // while($row = mysqli_fetch_assoc($result) ){
        
                $acards .= "
                <div class='col col-12 col-sm-6 col-md-6 col-lg-4 col-xl-3 col-xxl-2 g-1'>
                    <div class='card mb-3' style='width: 18rem'>
                          
                            <div class='col-6 col-sm-6 col-md-6 col-lg-8 col-xl-8 col-xxl-8'>
                                <div class='card-body'>
                                    <h5 class='card-title'>{$row['artist']}</h5>
                                    <p class='card-text'>Title: {$row['title']}</p>
                                    <p class='card-text'>Genre: {$row['genre']}</p>
                                    <p class='card-text'>Country: {$row['country']}</p>
                                    <p class='card-text'>Publish Date: {$row['publish_date']}</p>
                                </div>
                            </div>

                    </div>
                </div>";
            
        }
    }else {
        $acards = "<span class='text_info'>No Data Available</span>";
    }
    
    
    mysqli_close($connect);
    ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <?php include_once 'component/boot.php' ?>
    <title>Document</title>
</head>
<body>
    <div class="row">
        <?= $acards ?>
    </div>
</body>
</html>
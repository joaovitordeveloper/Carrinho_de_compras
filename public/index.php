<?php 

require "../vendor/autoload.php";

$products = require '../app/helpers/products.php';

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Carts</title>
</head>
<body>

    <div id='container'>

        <ul>

            <?php foreach($products as $index => $product): ?>

                <li>
                    <?php echo $product['name']; ?> |R$ <?php echo number_format($product['price'],2,',','.'); ?><a href="add.php?id=<?php echo $index; ?>">add to cards</a>
                </li>

            <?php endforeach; ?>    

        </ul>

    </div>
    
</body>
</html>
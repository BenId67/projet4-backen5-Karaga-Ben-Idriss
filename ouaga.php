<?php 
try {
    $bdd = new PDO("mysql:host=localhost;dbname=site_touristique","root","",array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
}
catch(Exception $e){
    die("erreur:" . $e->getMessage());
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="ouaga.css">
    <title>Document</title>
</head>
<body>
    <h1 class="title2">Les sites touristiques de Ouagadougou</h1>
    <section class="ouaga">
    <?php 
                 $ouaga = $bdd->query("SELECT * FROM ouaga");
                 while($donnees = $ouaga->fetch()){

             ?>
        <div class="ouaga1">
        
            <h3> <?php echo $donnees["titre1"] ?></h3>
            <p><?php echo $donnees["ouagatext1"] ?></p>
        </div>
        <div class="ouaga2">
            <img src="<?php echo $donnees["ouagaimg1"] ?>" class="ouagaimg">
        </div>
    </section> <br> <br>
    <section class="ouaga">
        <div class="ouaga1">
            <h3><?php echo $donnees["titre2"] ?></h3>
            <p><?php echo $donnees["ouagatext2"] ?></p>
        </div>
        <div class="ouaga2">
            <img src="<?php echo $donnees["ouagaimg2"] ?>" alt="" class="ouagaimg">
        </div>
    </section> <br> <br>
    <section class="ouaga">
        <div class="ouaga1">
            <h3><?php echo $donnees["titre3"] ?></h3>
            <p> <?php echo $donnees["ouagatext2"] ?></p>
        </div>
        <div class="ouaga2">
            <img src="<?php echo $donnees["ouagaimg3"] ?>" alt="" class="ouagaimg">
        </div>
        <?php } ?>
    </section>
</body>
</html>
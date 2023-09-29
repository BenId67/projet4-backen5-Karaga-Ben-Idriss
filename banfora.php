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
    <link rel="stylesheet" href="banfora.css">
    <title>Document</title>
</head>
<body>
    <h1 class="title3">Les sites touristiques de Banfora</h1>
    <section class="banfora">
    <?php 
                 $banfora = $bdd->query("SELECT * FROM banfora");
                 while($donnees = $banfora->fetch()){

             ?>
        <div class="banfora1">
            <h3><?php echo $donnees["titre1"]?> </h3>
            <div class=""> <img src="<?php echo $donnees["banforaimg1"]?>" alt="" class="banforaimg"> </div>
            <p><?php echo $donnees["banforatext1"]?></p>
        </div>
        <div class="banfora1">
            <h3><?php echo $donnees["titre2"]?></h3>
            <div class=""> <img src="<?php echo $donnees["banforaimg2"]?>" alt="" class="banforaimg"> </div>
            <p><?php echo $donnees["banforatext2"]?> </p>
        </div>
        <div class="banfora1">
            <h3><?php echo $donnees["titre3"]?></h3>
            <div class=""> <img src="<?php echo $donnees["banforaimg3"]?>" alt="" class="banforaimg"> </div>
            <p><?php echo $donnees["banforatext3"]?></p>
        </div>
        <?php } ?>
    </section>  
</body>
</html>
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
    <link rel="stylesheet" href="bootstrap.min.css">
    <title>Document</title>
</head>
<body>
<?php include 'header.php' ?>
 <h2 class="container bg-secondary">A PROPOS</h2>
    <div class="row bg-light">
     <h2 class="text-center">Le Burkina Faso</h2>
        <div class="col-2"></div>
        <div class="col">
        <div class="row">
            <?php 
                 $colun = $bdd->query("SELECT * FROM a_propos");
                 while($donnees = $colun->fetch()){

             ?>
            <div class="col">
                <p> <?php echo $donnees["texte"]?> ​</p>
            </div>
            <?php } ?>
        </div>
        </div>
        <div class="col-2"></div>
    </div>
  <?php include 'footer.php'?>
</body>
</html>
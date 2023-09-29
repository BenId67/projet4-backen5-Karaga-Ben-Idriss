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
    <link rel="stylesheet" href="bo.css">
    <title>Document</title>
</head>

 
<body>
   <h1 class="title">Les sites touristiques de Bobo</h1>
        
   <div class="bobo1">
        <div class="bobo11">
        <?php 
                 $bobo1 = $bdd->query("SELECT * FROM bobo");
                 while($donnees = $bobo1->fetch()){

             ?>
            <h4> <?php echo $donnees["titre1"] ?></h4>
         <div class="text"> <?php echo $donnees["bobotext1"] ?></div>
          </div>
        <div class="bobo12">
        <img src=" <?php echo $donnees["boboimg1"] ?> " class="boboimg" alt="">
        </div>
        <?php } ?>
    </div>
       
    <div class="bobo1">
        <div class="bobo11">
        <?php 
                 $bobo2 = $bdd->query("SELECT * FROM bobo");
                 while($donnees = $bobo2->fetch()){

             ?>
            <h4> <?php echo $donnees["titre2"] ?></h4>
         <div class="text"> <?php echo $donnees["bobotext2"] ?></div>
          
          </div>
        <div class="bobo12">
        <img src="<?php echo $donnees["boboimg2"]?>" class="boboimg" alt="">
        </div>
        <?php } ?>
    </div>

    <div class="bobo1">
        <div class="bobo11">
        <?php 
                 $bobo3 = $bdd->query("SELECT * FROM bobo");
                 while($donnees = $bobo3->fetch()){

             ?>
            <h4> <?php echo $donnees["titre3"] ?></h4>
         <div class="text"> <?php echo $donnees["bobotext3"] ?> </div>
        </div>
        <div class="bobo12">
          <img src=" <?php echo $donnees["boboimg3"] ?>" class="boboimg" alt="">
        </div>
      <?php } ?>
    </div>

</body>
</html>

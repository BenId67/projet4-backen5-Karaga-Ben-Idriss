<?php 
session_start();
if(empty($_POST["password"])) {
 // header("Location: connecter.php");
}
try {
    $bdd = new PDO("mysql:host=localhost;dbname=site_touristique","root","",array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
}
catch(Exception $e){
    die("erreur:" . $e->getMessage());
};
  
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="bootstrap.min.css">
    <link rel="stylesheet" href="home.css">
    <title>Home</title>
</head>
<body>
<?php include("header.php");?>
<div class="card bg-dark text-white">
  <img src="images.jpeg" class="card-img im" alt="...">
  <div class="card-img-overlay">
    <h2 class="img-text">Bienvenue au Burkina Faso,Un Pays à diversité Culturelle et Touristique</h2>
  </div>
</div>
<div class="burkina">
<?php 
            $home = $bdd->query("SELECT * FROM home_page");
            while($donnees = $home->fetch()){
             ?>
    <div class="burkina1">
      <h2 class="bur"> <?php echo $donnees["titre"]?> </h2>
          <p> <?php echo $donnees["texte"]?> </p>
    </div>
    <div class="burkina2">
        <img class="burkina2img" src="faso.webp" alt="">
    </div>
</div>
         <?php } ?>
<div class="row">
  
</div>
<div class="col-3"></div>
</div>
<?php 
            $ville = $bdd->query("SELECT * FROM ville");
            while($donnees = $ville->fetch()){

             ?>
<h2 class="text-center"><?php echo $donnees["titre"] ?></h2>
<section class="container">
        <div class="row">
          <div class="col-lg-4 col-sm-10 mx-auto mb-4">
            <div class="card">
              <img src="<?php echo $donnees["img1"] ?>" class="card-img-top" alt="1">
              <div class="card-body">
                <h3 class="card-title"><?php echo $donnees["titre1"]?> </h3>
                <h5><?php echo $donnees["p1"]?> </h5>
                <button id="bobo" href="bobo.php" class="visite">Visitez</button> 
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-sm-10 mx-auto mb-4">
            <div class="card">
              <img src="<?php echo $donnees["img2"]?> " class="card-img-top" alt="2">
              <div class="card-body">
                <h3 class="card-title"><?php echo $donnees["titre2"]?> </h3>
                <h5><?php echo $donnees["p2"]?> </h5>
                <button id="ouaga" href="ouaga.php" class="visite">Visitez</button>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-sm-10 mx-auto mb-4">
            <div class="card">
              <img src="<?php echo $donnees["img3"]?> " class="card-img-top" alt="3">
              <div class="card-body">
                <h3 class="card-title"><?php echo $donnees["titre3"]?> </h3>
                <h5><?php echo $donnees["p3"]?> </h5>
                <button id="banfora" href="banfora.php" class="visite">Visitez</button>
            </div>
              </div>
            </div>
            </div>
            </section>
            <?php } ?>
          </div>
        </div>
        </section>


<?php include("footer.php");?>
<script>
  document.getElementById("bobo").addEventListener("click", function(){
    window.location.href="bobo.php";
  });
  document.getElementById("ouaga").addEventListener("click", function(){
    window.location.href="ouaga.php";
  });
  document.getElementById("banfora").addEventListener("click", function(){
    window.location.href="banfora.php";
  });
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>
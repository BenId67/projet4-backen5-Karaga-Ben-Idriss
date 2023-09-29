<?php 
session_start();
    $bdd = new PDO("mysql:host=localhost;dbname=site_touristique","root","",array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
    if(isset($_POST['submit'])) {
        if(!empty($_POST["nom"]) || !empty($_POST["prenom"]) || !empty($_POST["email"]) || !empty($_POST["password"])) {
            $nom = htmlspecialchars($_POST["nom"]);
            $prenom = htmlspecialchars($_POST["prenom"]);
            $email = htmlspecialchars($_POST["email"]);
            $password = sha1($_POST["password"]);

            $new_user = $bdd -> prepare("INSERT INTO connexion(nom, prenom, email, password) VALUES(?, ?, ?, ?)");
            $new_user -> execute(array($nom, $prenom, $email, $password));

            $select_user = $bdd -> prepare("select * from connexion where nom=? AND prenom=? AND email=? AND password=?");
            $select_user -> execute(array($nom, $prenom, $email, $password));

            if($select_user -> rowCount() > 0) {
            $_SESSION["nom"] = $nom;
            $_SESSION["prenom"] = $prenom;
            $_SESSION["email"] = $email;
            $_SESSION["password"] = $password;
            $_SESSION["id"] = $select_user->fetch()["id"];
             header('Location: connecter.php');
             echo ("compte créer avec succès"); 
            }
        } else {
          echo  '<h2 class="alerte" >Tous les champs sont requis pour votre inscription!</h2>';
        }
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="inscription.css">
    <title>Document</title>
</head>
<body>
    <form action="" method="POST" class="connexion">
        <h2>Creer un compte</h2>
        <div>
        <input type="text" id="nom" name="nom" placeholder="Nom">
        </div>

        <div>
        <input type="text" id="prenom" name="prenom" placeholder="Prenom">
        </div>

        <div>
        <input type="email" id="email" name="email" placeholder="Email">
        </div>

        <div>
        <input type="password" id="password" name="password" placeholder="Mot de Passe">
        </div>

        <input type="submit" name="submit" class="submit" value="ENVOYER">

        <h4 class="compte">Avez-vous déjà un compte? <a href="connecter.php">SE CONNECTER</a></h4>

    </form>


</body>
</html>0
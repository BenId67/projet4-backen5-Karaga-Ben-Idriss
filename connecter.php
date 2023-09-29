<?php 
session_start();
    $bdd = new PDO("mysql:host=localhost;dbname=site_touristique","root","",array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
    if(isset($_POST['submit'])) {
        if(!empty($_POST["email"]) AND !empty($_POST["password"])) {
            $email = htmlspecialchars($_POST["email"]);
            $password = sha1($_POST["password"]);

            $select_user = $bdd -> prepare("select * from connexion where  email=? AND password=?");
            $select_user -> execute(array($email, $password)); 

            if($select_user -> rowCount() > 0) {
                $_SESSION["email"] = $email;
                $_SESSION["password"] = $password;
                $_SESSION["id"] = $select_user->fetch()["id"];
             header('Location: home.php');
            }
            else {
                echo '<h2 class="alerte">Email ou password incorrect!</h2>';
            }
        } else {
          echo  '<h2 class="alerte">Remplissez tous les champs pour vous connecter</h2>';
        }
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="connexion.css">
    <title>Document</title>
</head>
<body>
    <form action="" method="POST" class="connexion">
       <h2>CONNEXION</h2>

        <div>
        <input type="text" id="email" name="email" placeholder="Email">
        </div>

        <div>
        <input type="password" id="password" name="password" placeholder="Mot de Passe">
        </div>

        <div>
        <input type="submit" name="submit" class="submit" value="SE CONNECTER">
        </div>

       <h3 class="compte">Pas de compte? <a href="inscription.php">Créer un compte</a></h3>

    </form>


</body>
</html>
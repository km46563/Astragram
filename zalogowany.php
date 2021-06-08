<?php

	session_start();
	

	if (!isset($_SESSION['zalogowany']))
	{
		header('Location: index.php');
		exit();
	}

?>
<!DOCTYPE HTML>
<html lang="pl">
<head>
	<link rel="stylesheet" href="./css/styl.css" type="text/css">
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<title>Astagram</title>
	
</head>

<body>

	<?php

	echo "<p>Zalogowano: ".$_SESSION['Login'].'! [ <a href="./logout.php">Wyloguj się!</a> ]</p>';	
?>
	

		
		
	<form action="upload.php" method="POST" enctype="multipart/form-data">
	<label>Tytul:</label><br>
	<input type="text" name="tytul"><br>
	<label>Opis:</label><br>
	<input type="text" name="opis"><br>
	<br>
	<input type="file" name="file">
	<button type="submit" name="submit"> Dodaj zdjecie </button>
	</form>
	<br>
	<?php
	require_once "connect.php";
		mysqli_report(MYSQLI_REPORT_STRICT);
		
		try 
		{
			$polaczenie = new mysqli($host, $db_user, $db_password, $db_name);
			if ($polaczenie->connect_errno!=0)
			{
				throw new Exception(mysqli_connect_errno());
			}
			else
			{
				$zdjecia = $polaczenie->query("SELECT Zdjecie FROM zdjecia_io");
				
				while($row = mysqli_fetch_array($zdjecia)) 
				{
				$fot = $row['Zdjecie'];
				
				$tytul = $polaczenie->query("SELECT Tytul FROM zdjecia_io WHERE Zdjecie = '$fot'");
				$rows = mysqli_fetch_array($tytul);
				echo $rows['Tytul'];
				echo "<br>";
				//echo $fot;
				echo "<img src='./uploads/$fot'>";
				echo "<br>";
				
				$opis = $polaczenie->query("SELECT Opis FROM zdjecia_io WHERE Zdjecie = '$fot'");
				$rowss = mysqli_fetch_array($opis);
				echo $rowss['Opis'];
				echo "<br><br><br>";
				
				}
		
				$polaczenie->close();
			}
			
		}
		catch(Exception $e)
		{
			echo '<span style="color:red;">Błąd serwera! Przepraszamy za niedogodności i prosimy o rejestrację w innym terminie!</span>';
			echo '<br />Informacja developerska: '.$e;
		}
	
	?>
	
	
</body>
</html>

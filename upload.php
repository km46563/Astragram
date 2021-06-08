<?php

	session_start();
		
		
if (isset($_POST['submit']))
{
	$file = $_FILES['file'];
	
	$fileName = $_FILES['file']['name'];
	$fileTmpName = $_FILES['file']['tmp_name'];
	$fileSize = $_FILES['file']['size'];
	$fileError = $_FILES['file']['error'];
	$fileType = $_FILES['file']['type'];
	
	$fileExt = explode('.', $fileName);
	$fileActualExt = strtolower(end($fileExt));
	
	$allowed = array('jpg', 'jpeg', 'png');
	
	if (in_array($fileActualExt, $allowed))
	{
		if($fileError === 0)
		{
			if($fileSize < 1000000)
			{
				$fileNameNew = uniqid('', true).".".$fileActualExt;
				$fileDestination = 'uploads/'.$fileNameNew;
				move_uploaded_file($fileTmpName, $fileDestination);	
			}
			else
			{
				echo "Twoj plik jest za duzy!";
			}
		}
		else
		{
			echo "Wystapil blad podczas uploadu pliku!";
		}
	}
	else
	{
		echo "Nie mozesz uploadowac pliku tego typu!";
	}
}

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
				$tytul=$_POST["tytul"];
				$opis=$_POST["opis"];
	
				$_SESSION['tytul'] = $tytul;
				$_SESSION['opis'] = $opis;
					
					if ($polaczenie->query("INSERT INTO zdjecia_io VALUES (NULL, '$tytul', '$opis', '$fileNameNew', NULL)"))
					{
						$_SESSION['udanarejestracja']=true;
						header('Location: zalogowany.php');
					}
					else
					{
						throw new Exception($polaczenie->error);
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
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Логин</title>
</head>
<body>

	<form method="POST">
		<input type="login" name="login" placeholder="Логин">
		<input type="password" name="password" placeholder="Пароль">
		<br>
		<br>
		<input type="submit" name="blogin" value="Вход">
	</form>

	<?php
	$servername = "localhost";
	$database = "test";
	$username = "root";
	$password = "skull94519";
	$link = mysqli_connect($servername, $username, $password, $database);

	if (isset($_POST['blogin']))
	{
		$login = $_POST['login'];
		$password = $_POST['password'];
		if(strlen($login) <= 16 && strlen($login) >= 4)
		{
			if(preg_match("/[\'\"\`\*\/\*<>]|(WHERE)|(SELECT)|(ORDER BY)|(--)|(OR)/", $login))
			{
				echo "Недопустимые символы (MYSQL).";
			}
			else
			{
				$query = mysqli_query($link, "SELECT * FROM users WHERE login = '".$login."'");
				$result = mysqli_fetch_assoc($query);
				if (md5($password) == $result['password'])
				{
//******************************************Login: Andrey | Password: ssqqee******************************************
					session_start();
					$_SESSION['login'] = $_POST['login'];
					header('location:post.php');
					exit();
				}
				else
				{
					echo "Такого пользователя не существует.";
				}
			}
		}
		else
		{
			echo "Длина логина должна быть от 4 до 16.";
		}
	}
	?>

</body>
</html>
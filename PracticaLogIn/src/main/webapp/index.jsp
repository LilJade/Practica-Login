<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Log In</title>
	<link rel="stylesheet" href="estilos.css">
</head>
<body>
	<header>
		<div class="head">
			<h1>LOG IN</h1>
		</div>
	</header>
	<div class="content">
		<form class="logInForm" action="servletUser" method="post">
			<h2 class="title">Inicia Sesi�n</h2>
			<label class="rotulo">Escribe tu nombre de Usuario</label>
			<input class="control" type="text" name="usser" placeholder=" &#x1F464; Nombre de Usuario">
			<label class="rotulo">Escribe tu contrase�a</label>
			<input class="control" type="password" name="pass" placeholder=" &#x1F441; Contrase�a">
			<a href="#">Reg�strate gratis aqu�</a>
			<input class="button" type="submit" name="" value="Ingresar">
		</form>
	</div>
	<footer>
		<span>Developer By LilJade</span>
	</footer>
</body>
</html>
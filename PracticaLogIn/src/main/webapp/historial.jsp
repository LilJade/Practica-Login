<html>
<head>
	<meta charset="UTF-8">
	<title>P3</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<script src="http://code.jquery.com/jquery-latest.js"></script>
</head>
	<script type="text/javascript">
		$(document).ready(function(){

			$.post('servletHistorial', {
				
			}, function(respose){
				let datos = JSON.parse(respose);

				var tablaDatos = document.getElementById('tablaHistorial');
				for(let item of datos){
					if(item[2] == null || item[2] == undefined){
						item[2] = "Sin Registro"
					}
					
					tablaDatos.innerHTML += `
						<tr>
							<td>${item[0]}</td>
							<td>${item[1]}</td>
							<td>${item[2]}</td>
						</tr>
					`
				}
/*				for (var i = 0; i < datos.length; i++)
					if(datos[i][2] == null || datos[i][2] == undefined){
						datos[i][2] = "No Registrado"
					}
				
					tablaDatos.innerHTML += `
						<tr>
							<td>${datos[i][0]}</td>
							<td>${datos[i][1]}</td>
							<td>${datos[i][2]}</td>
						</tr>
					`*/
			});
		});
	</script>
<body>
	<h2 align="center">HISTORIAL COMPLETO</h2>
	<table class="table table-dark" id="tablaHistorial">
		<thead>
			<th>ID</th>
			<th>NOMBRE DE USUARIO</th>
			<th>FECHA</th>
		</thead>
		<tbody>
			
		</tbody>
	</table>
</body>
</html>
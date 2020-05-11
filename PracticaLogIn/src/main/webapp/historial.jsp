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
					tablaDatos.innerHTML += `
						<tr>
							<td> ${item.idHistorial} </td>
							<td> ${item.nombre_usuario} </td>
							<td> ${item.fecha} </td>
						</tr>
					`
				}
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
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="/static/style.css">
	<title>Fyrirtæki</title>
</head>
<body>
	
	<center><h1>Bensínstöðvar</h1></center>
	<table>
	<tbody>
	<tr>
	<th>Fyrirtæki</th>
	<th>Staður</th>
	</tr>
%teljari=0
% for i in data['results']:
	%if i['company'] == id:
		<tr><td><h4>{{id}}</td>  <td>{{i['name']}}</td>  <td>Bensín 95: {{i['bensin95']}} kr.</td> <td>Dísel: {{i['diesel']}} kr.</td></tr></h4>
		%teljari=teljari+1
	%end
%end
</tbody>
</table>
<center>
<b>Fjöldi stöðva {{teljari}}</b>
<a href="/"><h3><b>Heim</b></h3></a></center>	
</body>
</html>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="/static/style.css">
	<title>Gasólín</title>
</head>
<body>
	<img src='/static/ao.png'>  <img src='/static/costco.png'>  <img src='/static/daelan.png'>  <img src='/static/n1.png'>  <img src='/static/ob.png'>  <img src='/static/olis.png'>  <img src='/static/orkan.png'>  <img src='/static/orkanx.png'>  <img src='/static/skeljungur.png'>
	% for i in complisti:
		<a href="/company/{{i}}"><h3>{{i}}</h3></a>
	% end
	%for i in data['results']:
    	%if i['bensin95'] == price95:
        	<b><h3>Ódýrasta bensín: <i>{{price95}}kr.</i> hjá {{(i['company'])}}</h3></b>
        %end
    %end
    %for i in data['results']:
    	%if i['diesel'] == pricedisel:
        	<b><h3>Ódýrasta díesel: <i>{{pricedisel}}kr.</i> hjá {{(i['company'])}}</h3></b>
        %end
    %end
	síðast uppfært {{data['timestampPriceCheck']}}
</body>
</html>
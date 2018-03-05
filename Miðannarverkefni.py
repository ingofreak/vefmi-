from bottle import *
import urllib.request, json

with urllib.request.urlopen("http://apis.is/petrol") as url:
    data = json.loads(url.read().decode())

#print(data)
complisti=[]


price95=500
pricedisel=500
for i in data['results']:
    complisti.append(i['company'])
        

complisti = set(complisti)
complisti = list(complisti)

for i in data['results']:
    if i['bensin95'] < price95:
        price95=i['bensin95']
    if i['diesel'] < pricedisel:
        pricedisel=i['diesel']

@route('/')
def index():
    return template('index',complisti=complisti,data=data,price95=price95,pricedisel=pricedisel)

@route('/company/<id>')
def company(id):
    return template('company',data=data,id=id)

@route('/static/<skra>')
def staticskrar(skra):
    return static_file(skra, root='./miðmynd')


@error(404)
def villa(error):
    return "<h2>Því miður er þessi síða ekki til</h2>"

run(host='0.0.0.0', port=os.environ.get('PORT'))

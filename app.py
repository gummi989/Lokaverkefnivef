# þurfum að setja pymysql upp í pyCharm (sama rútína og bottle-beaker)
import pymysql
from bottle import *
import os

@route('/')
def index():
    return template('index.tpl')

@route('/bill', method='POST')
def bill():
    nr = request.forms.get('numer')

    # tengir okkur við þjón og ákveðinn grunn.
    conn = pymysql.connect(host='tsuts.tskoli.is', port=3306, user='1309992639', passwd='mypassword', db='1309992639_bilar')
    cur = conn.cursor()

    # lesa alla úr töflunni bilar, athuga hvort bíll með tiltekið skráningarnúmer er til í db
    cur.execute("SELECT * FROM bilar where skraningarnumer=%s",(nr))
    bill = cur.fetchone()

    print("bamm...")
    #cur.close()
    conn.close()

    #bílnúmer ekki til
    if bill is None:
        return template("notbill.tpl",nr=nr)
    #bílnumer til
    else:
        return template('bill.tpl',bill=bill)

@route('/innskra')
def inn():
    return template('innskra')

@route('/doinnskra', method='POST')
def doinn():
    u = request.forms.get('user')
    p = request.forms.get('pass')

    conn = pymysql.connect(host='tsuts.tskoli.is', port=3306, user='1309992639', passwd='mypassword', db='1309992639_bilar')
    cur = conn.cursor()

    cur.execute("SELECT count(*) FROM user where user=%s and pass=%s",(u,p))
    result = cur.fetchone()#fáum tuple
    cur.close()
    conn.close()

    # er u og p til í  db?
    if result[0] == 1:
        return template('admin.tpl',u=u)
    else:
        return "Þessi ekki til í db"

@route('/breyta')
def breyta():
    nr = request.query.get('nr')

    conn = pymysql.connect(host='tsuts.tskoli.is', port=3306, user='1309992639', passwd='mypassword', db='1309992639_bilar')
    cur = conn.cursor()

    #sækjum í db upplýsingar um bíl með skraningarnumerið nr
    cur.execute("SELECT * FROM bilar where skraningarnumer=%s",(nr))
    bill = cur.fetchone()#fáu info um nákvæmlega 1 bíl í tuple
    cur.close()
    conn.close()

    return template('breyta',nr=nr,bill=bill)

@route('/dobreyta', method='POST')
def dobreyta():
    nr = request.forms.get('nr')
    t = request.forms.get('tegund')
    v = request.forms.get('vnr')
    sd = request.forms.get('sdagur')
    u = request.forms.get('utblastur')
    ti = request.forms.get('tingd')
    s = request.forms.get('skodun')
    st = request.forms.get('stada')

    u = int(u)
    ti = int(ti)



    takki = request.forms.get('breyta')

    #breytum
    if takki == 'Breyta':
        conn = pymysql.connect(host='tsuts.tskoli.is', port=3306, user='1309992639', passwd='mypassword', db='1309992639_bilar')
        cur = conn.cursor()
        cur.execute("Update bilar set skraningarnumer='{}', tegund='{}', verksmidjunumer='{}',skraningardagur='{}',co2='{:d}',þyngd='{:d}',skodun='{}',stada='{}' where skraningarnumer='{}'".format(nr, t, v, sd, u, ti, s, st, nr))
        conn.commit()
        cur.close()
        conn.close()
        redirect('/')
    #eyðum
    else:
        conn = pymysql.connect(host='tsuts.tskoli.is', port=3306, user='1309992639', passwd='mypassword', db='1309992639_bilar')
        cur = conn.cursor()
        cur.execute("Delete from bilar where skraningarnumer = %s",(nr))
        conn.commit()
        cur.close()
        conn.close()
        redirect('/')

@route('/nyr')
def nyrbill():
    return template('nyrbill')

@route('/donyrbill', method='POST')
def nyrbill():
    nr = request.forms.get('nr')
    t = request.forms.get('tegund')
    v = request.forms.get('vnr')
    sd = request.forms.get('sdagur')
    u = request.forms.get('utblastur')
    ti = request.forms.get('tingd')
    s = request.forms.get('skodun')
    st = request.forms.get('stada')

    u = int(u)
    ti = int(ti)

    conn = pymysql.connect(host='tsuts.tskoli.is', port=3306, user='1309992639', passwd='mypassword', db='1309992639_bilar')
    cur = conn.cursor()
    cur.execute("Insert into bilar values('{}','{}','{}','{}','{:d}','{:d}','{}','{}')".format(nr, t, v, sd, u, ti, s, st))
    conn.commit()
    cur.close()
    conn.close()

    redirect('/')

run(host="0.0.0.0", port=os.environ.get("PORT"))

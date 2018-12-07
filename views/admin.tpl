<!DOCTYPE html>
<html lang="is"> 
  <head>
    <meta charset="utf-8">
    <title>Ökutækjaskrá</title>
    <style>
      body{width: 90%;margin:0 auto;}
      table {
          font-family: arial, sans-serif;
          border-collapse: collapse;
          size:0.4em;
          width: 100%;
      }

      td, th {
          border: 1px solid #dddddd;
          text-align: left;
          padding: 8px;
      }

      tr:nth-child(even) {
          background-color: rgb(0, 191, 255);
      }
    </style>
  </head>
  <body>
        % import pymysql
        % conn = pymysql.connect(host='tsuts.tskoli.is', port=3306, user='2704982729', passwd='mypassword', db='2704982729_bilar')
        % cur = conn.cursor()
        % cur.execute("SELECT * FROM bilar")

      <h2>User: {{u}}</h2>
      <table>
      <tr>
        <th>Skráningarnúmer</th>
        <th>Tegund</th>
        <th>Verksmiðjunúmer</th>
        <th>Skráningardagur</th>
        <th>Útblástur</th>
        <th>Þyngd</th>
        <th>Næsta skoðun</th>
        <th>Staða</th>
      </tr>
      % for i in cur:
      <tr>
        <td><a href='/breyta?nr={{i[0]}}'>{{i[0]}}<a></td>
        <td>{{i[1]}}</td>
        <td>{{i[2]}}</td>
        <td>{{i[3]}}</td>
        <td>{{i[4]}}</td>
        <td>{{i[5]}}</td>
        <td>{{i[6]}}</td>
        <td>{{i[7]}}</td>
      </tr>
      % end
    </table>
    <br>
    <a href='/nyr'>Skrá bíl</a>

  </form>    
  </body>
</html>

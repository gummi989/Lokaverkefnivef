<!DOCTYPE html>
<html lang="is"> 
  <head>
    <meta charset="utf-8">
    <title>Innskráning</title>
  </head>
  <body>
  <form method='post' action='/doinnskra' accept-charset="ISO-8859-1">
      <h3>Innskráningarform:</h3>
      Notendanafn:<br>
      <input type="text" name='user' required><br><br>
      Lykilorð:<br>
      <input type="text" name='pass' required><br>
      <br>
      <input type='submit' value='Innskrá'>
      <input type='reset' value='Hreinsa'>
  </form>    
  </body>
</html>
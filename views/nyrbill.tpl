<!DOCTYPE html>
<html lang="is"> 
  <head>
    <meta charset="utf-8">
    <title>Nýr bíll</title>
  </head>
  <body>
  <form method='post' action='/donyrbill' accept-charset="ISO-8859-1">
      <h3>Skrá bíl</h3>
      Skráningarnúmer:<br>
      <input type="text" name='nr' required><br>
      Tegund:<br>
      <input type="text" name='tegund' required><br>
      Verksmiðjunúmer:<br>
      <input type="text" name='vnr' required><br>
      Skráningardagur:<br>
      <input type="text" name='sdagur' required><br>
      Útblástur:<br>
      <input type="text" name='utblastur' required><br>
      Þyngd:<br>
      <input type="text" name='tingd' required><br>
      Næsta skoðun:<br>
      <input type="text" name='skodun' required><br>
      Staða:<br>
      <input type="text" name='stada' required><br>
      <br>
      <input type='submit' name='nyrbill' value='Nýskrá'>
      <br><br>
      <a href='/'>Heim</a>
  </form>    
  </body>
</html>
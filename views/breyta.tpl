<!DOCTYPE html>
<html lang="is"> 
  <head>
    <meta charset="utf-8">
    <title>Breyta</title>
  </head>
  <body>
  <form method='post' action='/dobreyta' accept-charset="ISO-8859-1">
      <h3>Breyta {{nr}}</h3>
      Skráningarnúmer:<br>
      <input type="text" name='nr' value='{{bill[0]}}'><br>
      Tegund:<br>
      <input type="text" name='tegund' value='{{bill[1]}}'><br>
      Verksmiðjunúmer:<br>
      <input type="text" name='vnr' value='{{bill[2]}}'><br>
      Skráningardagur:<br>
      <input type="text" name='sdagur' value='{{bill[3]}}'><br>
      Útblástur:<br>
      <input type="text" name='utblastur' value='{{bill[4]}}'><br>
      Þyngd:<br>
      <input type="text" name='tingd' value='{{bill[5]}}'><br>
      Næsta skoðun:<br>
      <input type="text" name='skodun' value='{{bill[6]}}'><br>
      Staða:<br>
      <input type="text" name='stada' value='{{bill[7]}}'><br>
      <br>
      <input type='submit' name='breyta' value='Breyta'>
      <input type='submit' name='eyda' value='Eyða'>
      <br><br>
      <a href='/'>Heim</a>
  </form>    
  </body>
</html>
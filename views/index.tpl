<!DOCTYPE html>
<html lang="is"> 
  <head>
    <meta charset="utf-8">
    <title>Ökutækjaskrá</title>
	<style type="text/css">
		body {
			background-color: lightblue;
			margin: 3em;
		}
		h3 {
			color: darkblue;
		}
		form {
			font-family: sans-serif;
		}
		input{
			padding: .3em;
			margin: .3em;
		}
	</style>
  </head>
  <body>
  <form action='/bill' method='post' accept-charset="ISO-8859-1">

      <h2>Ökutækjaskrá:</h2>
      Sláðu inn káningarnúmer:<br>
      <input type="text" name="numer" required>&nbsp;&nbsp;
      <input type='submit' value='Leita'>
      <br><br>
      <a href='/innskra'>Admin</a>
  </form>    
  </body>
</html>

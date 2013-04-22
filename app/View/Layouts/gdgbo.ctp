<!DOCTYPE html>
<html>
  <head>
    <meta charset='utf-8'>
    <meta content='IE=edge,chrome=1' http-equiv='X-UA-Compatible'>
    <title>GDG Questionnaire</title>
    <meta content='' name='keywords'>
    <meta content='' name='description'>
    <meta content='width=device-width, initial-scale=1.0' name='viewport'>
    <link href='/css/screen.css' media='screen, projection' rel='stylesheet'>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700' rel='stylesheet' type='text/css'>
  </head>
  <body class='bp'>
    <div id='header'>
      <div id='container'>
        <div class='full'>
          <a href='/'>
            <h1>GDG Bolivia</h1>
          </a>
        </div>
      </div>
    </div>
    <div id='bar'>
      <div id='container'>
        <p>Encuesta de mujeres en tecnología</p>
      </div>
    </div>
    <div id='container'>
      <?php
        echo $this->Layout->sessionFlash();
        echo $content_for_layout;
      ?>
    </div>
  </body>
</html>
<!doctype html>
<html lang="en">
  <head>
    <title>WT Intranet - Home</title>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="../css/style.css">
  </head>
  <body>
    <h1>WoodyToys Intranet</h1>
    <div class=intra>
    <h2>ERP Web tools</h2>
    </div>
    <div class=boxContent>
      <h3>Congratulations!</h3>
      <p>If you see this page, it means that the Web Server is in good working conditions and that ERP web tools will be usable.</p>
      <p>Today, we are the:<br>
      <?php
      /* Prints the day, date, month, year, time, AM or PM
       * Example:
       * Wednesday 20th of March 2019, 10:38:33 AM - America/New_York
       */
      echo date("l jS \of F Y, h:i:s A - e") . "<br>";
      ?>
      </p>
    </div>
    <footer>
      <p>EPHEC 2TL2 Group 13 &#169; 2019</p>
    </footer>
  </body>
</html>

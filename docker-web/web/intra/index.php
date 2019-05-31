<!doctype html>
<html lang="en">
  <head>
    <title>WT Intranet - Home</title>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="css/style.css">
  </head>
  <body>
    <h1>WoodyToys Intranet</h1>
    <div class=boxContent>
      <h2>ERP Web tools</h2>
      <h3>Congratulations!</h3>
      <p>If you see this page, it means that the Web Server is in good working conditions and that ERP web tools will be usable.</p>
      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum porta maximus nisl, ac vulputate elit gravida a. Vestibulum bibendum enim ac ipsum pharetra dapibus. Nunc dignissim sapien ex, ac scelerisque nisl dapibus eu. Vivamus purus sapien, maximus ultrices mattis suscipit, auctor sit amet nibh. Proin vitae efficitur purus, sed pretium sapien. Ut ut est pellentesque nisl ornare scelerisque. Fusce dapibus mi at est auctor, et imperdiet ligula finibus. Aliquam ac erat pharetra, pulvinar risus in, accumsan elit. Proin euismod eros eu semper tristique. Fusce auctor non dui at consequat. Quisque interdum urna eu ex convallis consequat. Aliquam leo neque, auctor at sagittis in, varius quis ante. Proin ligula sem, malesuada sodales volutpat id, consequat eget lectus. Vestibulum in lacus porttitor leo egestas semper pulvinar id orci. Aenean laoreet ante non eros tincidunt porttitor ut vitae lectus.</p>
      <hr>
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

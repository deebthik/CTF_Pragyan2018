<?php
  $cookie_name = "KimJongUn";
  $cookie_value = "2541d938b0a58946090d7abdde0d3890_b8e2e0e422cae4838fb788c891afb44f";
  setcookie($cookie_name, $cookie_value, time() + 10);
  sleep(3);
  $cookie_value = 'TooLateNukesGone';
  setcookie($cookie_name, $cookie_value, time() + 10);
?>
<html>
  <head>
    <title>Defense, North Korea</title>
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
    <style>
      body{
        background-color: #F4D03F;
        font-family: 'Open Sans', sans-serif;
        color: green;
        align: left;
      }
      .container{
        height: 300px;
        position: absolute;
        top: 120px;
        left: 10px;
      }
      h2{
        font-size: 5em;
        font-weight: lighter;
      }
    </style>
    <title>Find Me</title>
  </head>
  <body>
    <h2>North Korean Defense&nbsp;</h2>
    <div class="container">
      <p>You are accessing the super secret website of the Department of Defense, North Korea.
         Doing so without the Supreme Leader's consent is a crime and will be dealt with severely.
         Only admins are allowed to access this page after this point.
         All hail the Supreme Leader.
      </p>
      <br>
      <img src="http://images.entertainment.ie/images_content/rectangle/620x372/kju20141011228705.jpg" alt="Supreme Cookie" width="500" height="300">
    </div>
  </body>
</html>

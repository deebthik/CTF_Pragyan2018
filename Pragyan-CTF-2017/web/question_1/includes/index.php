<?php

    $a = 19;
    $b = 3;

    if(isset($_POST[v])) {
        $t = strtolower($_POST[v]);
        $input = ord($t[0]) - 97;
    };

    function gen_random_string($length) {
    $characters = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
    $charactersLength = strlen($characters);
    $randomString = '';
    for ($i = 0; $i < $length; $i++) {
        $randomString .= $characters[rand(0, $charactersLength - 1)];
    }
    return $randomString;
    }

    function affine($x) {
        
        $t = ($GLOBALS[a] * $x) + $GLOBALS[b];
        $t = ($t % 26) ;

        return $t + 1;
    };

    if(isset($input))
    {
        $output = gen_random_string(affine($input));
        setcookie("this", $output);
    }

    http_response_code(404);

    #echo "<br><br> Output :- ".chr($output);

?>

<!DOCTYPE html PUBLIC "-//IETF//DTD HTML 2.0//EN">
<html><head>
<meta http-equiv="content-type" content="text/html; charset=windows-1252">
<title>404 Not Found</title>
</head><body>
<h1>Not Found</h1>
<p>The requested URL /index.php was not found on this server.</p>
<hr>
<address>Apache/2.4.7 (Ubuntu) Server at localhost Port 80</address>

<form action='' method='POST'>
<input type="text" maxlength='1' name="v" style='border:0px solid white; background-color: white; margin-left: 800px; margin-top: 200px;'><br>
</form>

</body></html>

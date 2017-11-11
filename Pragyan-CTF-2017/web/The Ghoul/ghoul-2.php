<?php
    session_start();
    // Create a new CSRF token.
    if (! isset($_SESSION['csrf_token'])) {
        $_SESSION['csrf_token'] = base64_encode(openssl_random_pseudo_bytes(32));
    }
    // Check a POST is valid.
    if (isset($_POST['csrf_token']) && $_POST['csrf_token'] === $_SESSION['csrf_token']) {
        //give the flag
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <link href="https://fonts.googleapis.com/css?family=Amatic+SC" rel="stylesheet">

    <meta charset="utf-8" />
    <title>Graveyard Access Pass</title>
    <h1 align ="center" style="font-family: 'Amatic SC', cursive; font-size: 100px;"> Get your Pass Here!! </h1>
    <h3 align="center" style="font-family: 'Amatic SC', cursive; font-size: 40px;"> NOTE:- Only Ghouls shall pass </h3><br>

    <script>
    window.csrf = { csrf_token: '<?php echo $_SESSION['csrf_token']; ?>' };
    $.ajaxSetup({
        data: window.csrf
    });
    $(document).ready(function() {
        // CSRF token is now merged in AJAX request data.
        $.post('/awesome/ajax/url', { foo: 'bar' }, function(data) {
            console.log(data);
        });
    });
    </script>
</head>
<body>
    <form action="ghoul-2.php" method="post" accept-charset="utf-8" align="center">
        <input type="text" name="Buy Pass" />
        <input type="hidden" name="csrf_token" value="<?php echo $_SESSION['csrf_token']; ?>" />
        <input type="submit" value="Submit" />
    </form>
</body>
</html>

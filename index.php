<?php
  include "config/koneksi.php";
?>  
<!DOCTYPE html>
<html class="bootstrap-admin-vertical-centered">
    <head>
        <title>Sistem Informasi Akademik</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!-- Bootstrap -->
        <link rel="stylesheet" media="screen" href="css/bootstrap.min.css">
        <link rel="stylesheet" media="screen" href="css/bootstrap-theme.min.css">

        <!-- Bootstrap Admin Theme -->
        <link rel="stylesheet" media="screen" href="css/bootstrap-admin-theme.css">

        <!-- Custom styles -->
        <style type="text/css">
            .alert{
                margin: 0 auto 20px;
            }
        </style>

        <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
           <script type="text/javascript" src="js/html5shiv.js"></script>
           <script type="text/javascript" src="js/respond.min.js"></script>
        <![endif]-->
    </head>
    <body class="bootstrap-admin-without-padding" style="background-image:url(images/bg.jpg);">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">

                    <div class="bootstrap-admin-login-header">
                        <div align="center"> <h4>Sistem Informasi Akademik</h4>
                        <img src="images/download.png" width="50%" alt="" srcset="">
                        </div>
                    
                      <form method="post" action="ceck.php" class="bootstrap-admin-login-form">
                        <table>
                        <div class="form-group">
                            <select name='id_level' class="form-control">
                             <option value=0 selected></option>
                             <?php
                             $sql=mysql_query("SELECT * FROM level ORDER BY id_level");
                             while($d=mysql_fetch_array($sql)){
                             echo "<option value=$d[id_level]>$d[id_level]. $d[level]</option>";
                             }
                             ?>
                          </select>
                        </div>
                        <div class="form-group"><input class="form-control" type="text" name="username" placeholder="Nama Pengguna"></div>
                        <div class="form-group"><input class="form-control" type="password" name="password" placeholder="Kata sandi"></div>
                        <center>
                        <button class="btn btn-sm btn-primary" type="submit">MASUK</button>
                        </center>
                      <table>
                      </form> 
                    </div> 
                </div>
            </div>
        </div>

        <script type="text/javascript" src="http://code.jquery.com/jquery-2.0.3.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
        <script type="text/javascript">
            $(function() {
                // Setting focus
                $('input[name="email"]').focus();

                // Setting width of the alert box
                var alert = $('.alert');
                var formWidth = $('.bootstrap-admin-login-form').innerWidth();
                var alertPadding = parseInt($('.alert').css('padding'));

                if (isNaN(alertPadding)) {
                    alertPadding = parseInt($(alert).css('padding-left'));
                }

                $('.alert').width(formWidth - 2 * alertPadding);
            });
        </script>
    </body>
</html>

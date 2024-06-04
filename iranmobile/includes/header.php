<?php
session_start();
?>
<!doctype html>
<html>

<head>
    <meta charset="UTF-8" />
    <title>فروشگاه ایران موبایل</title>

    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <link rel="icon" type="image/x-icon" href="images/logo/iran-mobile-favicon-color.png">

    <style type="text/css">
        .set_style_link {
            text-decoration: none;
            font-weight: bold;
        }
    </style>

</head>

<body>


    <div class="divTable">
        <div class="divTableRow">
            <div class="divTableCell">
                <header class="divTable">
                    <div class="divTableRow">
                        <div class="logoIMG">
                            <img src="images/logo/main-logo.png" alt="ایران موبایل">
                        </div>
                    </div>



                    <div class="header-container">
                        <div class="logo">
                            <h1>ایران موبایل</h1>
                        </div>
                        <nav class="nav-links">
                            <ul>
                                <li><a href="index.php">صفحه اصلي</a></li>

                                <?php
                                if (isset($_SESSION["state_login"]) && $_SESSION["state_login"] === true) {
                                    ?>
                                    <li><a href="logout.php">خروج از سایت
                                            <?php echo (" ({$_SESSION["realname"]}) ") ?></a></li>
                                    <?php
                                } // if  پایان
                                else {
                                    ?>
                                    <li><a href="register.php">عضویت در سايت</a></li>
                                    <li><a href="login.php">ورود به سايت</a></li>
                                    <?php
                                }  //else پایان 
                                ?>

                                <li><a href="contact.php">ارتباط با ما</a></li>

                                <?php
                                if (isset($_SESSION["state_login"]) && $_SESSION["state_login"] === true && $_SESSION["user_type"] == "admin") {
                                    ?>
                                    <li><a href="admin_products.php">مدیریت محصولات</a></li>
                                    <li><a href="admin_manage_order.php">مدیریت سفارشات</a></li>
                                    <?php
                                } // if  پایان
                                ?>


                            </ul>
                        </nav>
                    </div>
                </header>



                <section class="divTable">
                    <section class="divTableRow">
                        <section class="divTableCell" style="width: 100%;">
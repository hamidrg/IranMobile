<?php
include ("includes/header.php");



include ("database_config.php");

$query = "SELECT * FROM products";             // پرس و جوي نمايش همه محصولات فروشگاه

$result = mysqli_query($link, $query);            //  اجراي پرس و جو


?>



<div class="slideshow-container">
    <div class="slide fade">
        <img src="images/slides/slide-1.jpg" alt="Slide 1">
    </div>
    <div class="slide fade">
        <img src="images/slides/slide-2.jpg" alt="Slide 2">
    </div>
    <div class="slide fade">
        <img src="images/slides/slide-3.jpg" alt="Slide 3">
    </div>

</div>

<script>
    let slideIndex = 0;
    showSlides();

    function showSlides() {
        let i;
        let slides = document.getElementsByClassName("slide");
        for (i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";
        }
        slideIndex++;
        if (slideIndex > slides.length) { slideIndex = 1 }
        slides[slideIndex - 1].style.display = "block";
        setTimeout(showSlides, 5000);
    }
</script>



<table style="width: 100%;" border="1px">
    <tr>

        <?php

        $counter = 0;
        while ($row = mysqli_fetch_array($result)) {
            $counter++;
            ?>


            <td style="border-style: dotted dashed;vertical-align: top;width: 25%;">

                <h4 style="color: #c57703;"><?php echo ($row['pro_name']) ?></h4>
                <a href="product_detail.php?id=<?php echo ($row['pro_code']) ?>" style="text-decoration: none;">
                    <img src="images/products/<?php echo ($row['pro_image']) ?>" />
                </a>
                <br />

                قيمت : <?php echo ($row['pro_price']) ?> &nbsp; ريال
                <br />

                تعداد موجودي : <span style="color:red;"><?php echo ($row['pro_qty']) ?></span>
                <br />

                توضيحات : <span style="color:#146226;"> <?php echo (substr($row['pro_detail'], 0, 240)) ?> ...</span>

                <br /><br />
                <b><a href="product_detail.php?id=<?php echo ($row['pro_code']) ?>" class="styled-link">توضيحات
                        تكميلي و خريد</a></b>
                <br /><br />
            </td>

            <?php
            if ($counter % 3 == 0)
                echo ("</tr><tr>");
        } // while
        
        if ($counter % 3 != 0)
            echo ("</tr>");

        ?>
</table>



<section class="cooperate-brands">
    <div class="container">
        <h2>معتبرترین برندها</h2>
        <div class="brand-list">
            <div class="brand-item">
                <img src="images/brands/brand-1.png" alt="Samsung">
            </div>
            <div class="brand-item">
                <img src="images/brands/brand-2.png" alt="Xiaomi">
            </div>
            <div class="brand-item">
                <img src="images/brands/brand-3.png" alt="Apple">
            </div>
            <div class="brand-item">
                <img src="images/brands/brand-4.png" alt="Oppo">
            </div>
            <div class="brand-item">
                <img src="images/brands/brand-5.png" alt="Nokia">
            </div>
        </div>
    </div>
</section>


<?php
include ("includes/footer.php");
?>
<h1 class='h1-responsive font-weight-bold text-center my-5 wow animated lightSpeedIn slow'><?= $title?></h1>

<div class='row justify-content-md-center mb-4 p-4'>
    <?php foreach($floodgate_products as $floodgate_product):?>
        <div class='col-md-3 mb-4 wow animated rollIn slower'>
            <!-- Card Wider -->
            <div class="card card-cascade wider" style='z-index: 0;'>
                <!-- Card image -->
                <div class="view view-cascade overlay">
                    <img  class="card-img-top" src="<?=base_url('public/images/floodgate_products_images/' . $floodgate_product['image'])?>" alt="<?=$floodgate_product['title']?>">
                    <a href="<?=base_url('floodgate_products/product_info/' . $floodgate_product['id'])?>">
                        <div class="mask rgba-white-slight"></div>
                    </a>
                </div>
                <div class="card-body card-body-cascade text-center">

                    <!-- Title -->
                    <h4 class="h4-responsive card-title"><strong><?=$floodgate_product['title']?></strong></h4>
                    <!-- Subtitle -->
                    <a href="<?=base_url('floodgate_products/product_info/' . $floodgate_product['id'])?>" class="h5-responsive blue-text pb-2"><strong>Learn more</strong></a>
                    <!-- Text -->
                    <p class="card-text"><?=word_limiter($floodgate_product['description'], 10, '......');?></p>
                </div>
            </div>
        </div>
    <?php endforeach;?>
</div>
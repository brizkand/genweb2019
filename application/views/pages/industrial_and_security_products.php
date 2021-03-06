<h1 class='h1-responsive font-weight-bold text-center my-5 wow animated lightSpeedIn slow'><?= $title?></h1>

<div class='row justify-content-md-center mb-4'>
    <div class='col-md-2 wow animated slideInDown slow'>
        <a href="<?=base_url('industrial_and_security_products/all')?>" class='h5-responsive text-capitalize <?php if(($title == 'Industrial and Security Products') || ($title == 'All')):?>border-bottom border-primary font-weight-bold text-indigo <?php endif;?>'>All</a>
    </div>
    <?php foreach($categories as $category):?>
    <div class='col-md-2 wow animated slideInDown slow'>
        <a href="<?=base_url('industrial_and_security_products/' . $category['category_id'])?>" class='h5-responsive text-capitalize <?php if($title == ucfirst($category['category'])):?>border-bottom border-primary font-weight-bold text-indigo <?php endif;?>'><?=$category['category'];?></a>
    </div>
    <?php endforeach;?>
</div>

<div class='row justify-content-md-center mb-4 p-4'>
    <?php foreach($industrial_and_security_products as $industrial_and_security_product):?>
        <div class='col-md-3 mb-4 wow animated rollIn slower'>
            <!-- Card Wider -->
            <div class="card card-cascade wider" style='z-index: 0;'>
                <!-- Card image -->
                <div class="view view-cascade overlay">
                    <img  class="card-img-top" src="<?=base_url('public/images/industrial_and_security_products_images/' . $industrial_and_security_product['image'])?>" alt="<?=$industrial_and_security_product['title']?>">
                    <a href="<?=base_url('industrial_and_security_products/product_info/' . $industrial_and_security_product['id'])?>">
                        <div class="mask rgba-white-slight"></div>
                    </a>
                </div>
                <div class="card-body card-body-cascade text-center">

                    <!-- Title -->
                    <h4 class="h4-responsive card-title"><strong><?=$industrial_and_security_product['title']?></strong></h4>
                    <!-- Subtitle -->
                    <a href="<?=base_url('industrial_and_security_products/product_info/' . $industrial_and_security_product['id'])?>" class="h5-responsive blue-text pb-2"><strong>Learn more</strong></a>
                    <!-- Text -->
                    <p class="card-text"><?=word_limiter($industrial_and_security_product['description'], 10, '......');?></p>
                </div>
            </div>
        </div>
    <?php endforeach;?>
</div>
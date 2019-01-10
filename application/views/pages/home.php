<h1 class='h1-responsive font-weight-bold text-center my-5 wow animated lightSpeedIn slow'><?= $title?></h1>



<div class='row justify-content-md-center mb-4'>
    <?php foreach($products_services as $product_service):?>
        <div class='col-md-4'>
            <!-- Card -->
            <div class="card card-cascade wider reverse m-4 <?=$product_service['animation'];?>">
                <div class="view overlay zoom">
                    <img class="card-img-top" src="<?=base_url('public/images/products_services/' . $product_service['image']);?>" alt="<?=$product_service['title']?>">
                    <div class="mask flex-center">
                        <p class="black-text">Click for more info</p>
                        <a href="<?=base_url($product_service['source'])?>">
                            <div class="mask rgba-blue-slight"></div>
                        </a>
                    </div>
                </div>
                <div class="card-body card-body-cascade text-center" style='z-index: 0;'>
                    <h4 class="card-title font-weight-bold indigo-text py-2"><strong><?=$product_service['title'];?></strong></h4>
                    <p class="card-text"><?=word_limiter($product_service['body'], 25, '......');?></p>
                </div>
            </div>
            <!-- Card -->
        </div>
    <?php endforeach;?>
</div>


<h1 class='h1-responsive font-weight-bold text-center my-5 wow animated lightSpeedIn slow'><?= $title?></h1>

<div class="row d-flex justify-content-center">
    <div class="col-md-4 col-xl-5 mb-4">   
    <a href='<?=site_url('elevator_products')?>' class="btn btn-pink btn-md mb-4 wow animated swing delay-3s"><i class="fa fa-arrow-left left"></i> Go Back</a>     
        <div class="view overlay rounded z-depth-2 wow animated rubberBand slow">
            <img src="<?=base_url('public/images/elevator_products_images/' . $elevator_product['image'])?>" class="img-fluid" alt="<?=$elevator_product['image']?>">
            <a>
                <div class="mask rgba-white-slight"></div>
            </a>
        </div>
    </div>
    <div class="col-md-8 col-xl-5 mb-4">
        <div class="card-body">
            <h5 class="wow animated slideInLeft slow green-text font-weight-bold mt-2 mb-3"><i class="fas fa-chart-line pr-2"></i><?=ucfirst($elevator_product['category'])?></h5>
            <h4 class="wow animated slideInRight slow font-weight-bold mb-3"><?=$elevator_product['title']?></h4>
            <p class='wow animated slideInDown slow'><?=$elevator_product['description']?></p>
            <p class='wow animated slideInRight slow'><?=$elevator_product['product_info']?></p>
        </div>
    </div>
</div>
<div class="row d-flex justify-content-center p-4">
    <?php if(!empty($elevator_more_infos)):?>
        <?php foreach($elevator_more_infos as $elevator_more_info):?>
            <div class='col-md-3 wow animated zoomIn slower'>
                <div class="card card-cascade wider" style='z-index: 0;'>
                    <div class="view view-cascade overlay">
                        <img  class="card-img-top" src="<?=base_url('public/images/elevator_products_images/' . $elevator_more_info['image'])?>" alt="<?=$elevator_more_info['name']?>">
                            <div class="mask rgba-white-slight"></div>
                    </div>
                    <div class="card-body card-body-cascade text-center">
                        <h4 class="h4-responsive card-title"><strong><?=$elevator_more_info['name']?></strong></h4>
                        <p class="card-text"><?=$elevator_more_info['description']?></p>
                    </div>
                </div>
            </div>
        <?php endforeach;?>
    <?php endif;?> 
</div>
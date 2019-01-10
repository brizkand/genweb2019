<h1 class='h1-responsive font-weight-bold text-center my-5 wow animated lightSpeedIn slow'><?= $title?></h1>

<div class="row d-flex justify-content-center">
    <div class="col-md-4 col-xl-5 mb-4">
        <a href='<?=site_url('floodgate_products')?>' class="btn btn-pink btn-md mb-4 wow animated swing delay-3s"><i class="fa fa-arrow-left left"></i> Go Back</a>
            
        <div class="view overlay rounded z-depth-2 wow animated rubberBand slow">
            <img src="<?=base_url('public/images/floodgate_products_images/' . $floodgate_product['image'])?>" class="img-fluid" alt="<?=$floodgate_product['image']?>">
            <a>
                <div class="mask rgba-white-slight"></div>
            </a>
        </div>
    </div>
    <div class='col-md-8 col-xl-5 mb-4'>
        <div class="card-body">
            <h4 class="wow animated slideInRight slow font-weight-bold mb-3"><?=$floodgate_product['title']?></h4>
            <p class='wow animated slideInDown slow'><?=$floodgate_product['description']?></p>
            <p class='wow animated slideInRight slow'><?=$floodgate_product['product_info']?></p>
        </div>
    </div> 
</div>

<h2 class='wow animated slideInRight slow font-weight-bold mb-3 text-center'>Water Gate Materials</h2>
<div class="row d-flex justify-content-center p-4">
    <?php if(!empty($floodgate_more_infos)):?>
        <?php foreach($floodgate_more_infos as $floodgate_more_info):?>
            <div class='col-md-3 wow animated zoomIn slower pb-4'>
                <div class="card card-cascade wider" style='z-index: 0;'>
                    <div class="view view-cascade overlay">
                        <img  class="card-img-top" src="<?=base_url('public/images/floodgate_products_images/' . $floodgate_more_info['image'])?>" alt="<?=$floodgate_more_info['title']?>">
                            <div class="mask rgba-white-slight"></div>
                    </div>
                    <div class="card-body card-body-cascade text-center">
                        <h4 class="h4-responsive card-title"><strong><?=$floodgate_more_info['id']?>. <?=$floodgate_more_info['title']?></strong></h4>
                        <p class="card-text"><?=$floodgate_more_info['description']?></p>
                        <p class="card-text"><?=$floodgate_more_info['product_info']?></p>
                    </div>
                </div>
            </div>
        <?php endforeach;?>
    <?php endif;?> 
</div>

<h2 class='wow animated slideInRight slow font-weight-bold mb-3 text-center'>Water Gate Videos</h2>
<div class="row d-flex justify-content-center p-4">
    <?php if(!empty($floodgate_videos)):?>
        <?php foreach($floodgate_videos as $floodgate_video):?>
            <div class="col-md-4 wow animated zoomIn slower pb-4">
                <div class="card p-4">
                    <iframe width='100%' height='400px' src="<?=$floodgate_video['source']?>" allowfullscreen="allowfullscreen">
                    </iframe>
                </div>
            </div>
        <?php endforeach;?>
    <?php endif;?> 
</div>

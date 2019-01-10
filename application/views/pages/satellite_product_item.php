<h1 class='h1-responsive font-weight-bold text-center my-5 wow animated lightSpeedIn slow'><?= $title?></h1>

<div class="row d-flex justify-content-center">
    <div class="col-md-4 col-xl-5 mb-4">
        <a href='<?=site_url('satellite_products')?>' class="btn btn-pink btn-md mb-4 wow animated swing delay-3s"><i class="fa fa-arrow-left left"></i> Go Back</a>
            
        <div class="view overlay rounded z-depth-2 wow animated rubberBand slow">
            <img src="<?=base_url('public/images/satellite_products_images/' . $satellite_product['image'])?>" class="img-fluid" alt="<?=$satellite_product['image']?>">
            <a>
                <div class="mask rgba-white-slight"></div>
            </a>
        </div>
    </div>
    <div class='col-md-8 col-xl-5 mb-4'>
        <div class="card-body">
            <h5 class="wow animated slideInLeft slow green-text font-weight-bold mt-2 mb-3"><i class="fas fa-chart-line pr-2"></i><?=ucfirst($satellite_product['category'])?></h5>
            <h4 class="wow animated slideInRight slow font-weight-bold mb-3"><?=$satellite_product['title']?></h4>
            <p class='wow animated slideInDown slow'><?=$satellite_product['description']?></p>
            <p class='wow animated slideInRight slow'><?=$satellite_product['product_info']?></p>
        </div>
    </div> 
</div>

<h1 class='h1-responsive font-weight-bold text-center my-5 wow animated lightSpeedIn slow'><?= $title?></h1>

<section class="text-center my-5">

    <div class="row justify-content-md-center">
        <?php foreach($brochures as $brochure):?>
            <div class="col-md-3">
                <div class="card collection-card z-depth-1-half m-4 wow animated zoomIn slower">               
                    <div class="view zoom">
                        <img src="<?=base_url('public/images/brochure_images/' . $brochure['image']);?>" class="img-fluid"
                        alt="<?=$brochure['title'];?>">
                        <div class="stripe dark">
                            <a href='<?=site_url('brochure/' . $brochure['id']);?>'>
                                <p><?=$brochure['title'];?>
                                <i class="fa fa-eye"></i>
                                </p>
                            </a>
                        </div>
                    </div>   
                </div>      
            </div>   
        <?php endforeach?>
    </div>
</section>
<h1 class='h1-responsive font-weight-bold text-center my-5 wow animated lightSpeedIn slow'><?= $title?></h1>
<?php if(!empty($news)):?>
    


    <div class="row d-flex justify-content-center">
        <div class="col-md-4 col-xl-5 mb-4">
            <a href='<?=site_url('news')?>' class="btn btn-pink btn-md mb-4 wow animated swing delay-3s"><i class="fa fa-arrow-left left"></i> Go Back</a>
                
            <div class="view overlay rounded z-depth-2 wow animated rubberBand slow">
                <img src="<?=base_url('public/images/news_images/' . $news['image'])?>" class="img-fluid" alt="<?=$news['image']?>">
                <a>
                    <div class="mask rgba-white-slight"></div>
                </a>
            </div>
        </div>
        <div class='col-md-8 col-xl-5 mb-4'>
            <div class="card-body">
                <h4 class="wow animated slideInRight slow font-weight-bold mb-3"><strong><?=$news['title']?></strong></h4>
                <p class='wow animated slideInDown slow'><?=$news['description']?></p>
                <p class='wow animated slideInRight slow'><?=$news['info']?></p>
            </div>
        </div> 
    </div>
<?php else: echo'<h2 class="h2-responsive font-weight-bold text-center text-danger my-5 wow animated wobble slower">There is no NEWS available right now!</h2>';?>
<?php endif;?>

<!--START OF THE CAROUSEL-->
<div id="carousel-example-2" class="carousel slide carousel-fade " data-ride="carousel">
    <ol class="carousel-indicators">
        <li data-target="#carousel-example-2" data-slide-to="0" class="active"></li>
        <li data-target="#carousel-example-2" data-slide-to="1"></li>
        <li data-target="#carousel-example-2" data-slide-to="2"></li>
        <li data-target="#carousel-example-2" data-slide-to="3"></li>
        <li data-target="#carousel-example-2" data-slide-to="4"></li>
        <li data-target="#carousel-example-2" data-slide-to="5"></li>
    </ol>
    <div class="carousel-inner" role="listbox">
        <?php foreach($carousels as $carousel):?>
            <div class="carousel-item <?php if($carousel['id']==1):echo 'active'; endif;?>">
                <div class="view">
                    <img class="d-block w-100" src="<?=base_url('public/images/carousel_images/'.$carousel['image']);?>" alt="<?=$carousel['title']?>">
                    <div class="mask rgba-black-light"></div>
                </div>
                <div class="carousel-caption">
                    <h3 class="h3-responsive wow animated bounceInDown"><?=$carousel['title'];?></h3>
                    <p class='wow animated fadeInUp'><?=$carousel['body'];?></p>
                </div>   
            </div>
        <?php endforeach;?>
    </div>
    <a class="carousel-control-prev" href="#carousel-example-2" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carousel-example-2" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>

<h1 class='h1-responsive font-weight-bold text-center my-5 wow animated lightSpeedIn slow'><?= $title?></h1>

<?php foreach($stories as $story):?>
    <div class="view jarallax" style="height: 100vh;">
        <img class="jarallax-img" src="<?=base_url('public/images/genserv_story_images/' . $story['image']);?>" alt="Parallax 1">
        <div class="mask rgba-black-strong">
            <div class="container flex-center text-center">
                <div class="row mt-5">
                    <div class="col-md-12 wow fadeIn mb-3">
                        <h5 class="text-uppercase mb-3 mt-1 font-weight-normal font-italic wow white-text animated zoomIn" data-wow-delay=".5s"><?=$story['page'];?></h5>
                    </div>
                </div>
            </div>
        </div>
    </div>
<?php endforeach;?>
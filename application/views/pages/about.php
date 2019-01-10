<h1 class='h1-responsive font-weight-bold text-center my-5 wow animated lightSpeedIn slow'><?= $title?></h1>

<?php foreach($abouts as $about):?>
    <div class="view jarallax" style="height: 100vh;">
        <img class="jarallax-img" src="<?=base_url('public/images/about_images/' . $about['image']);?>" alt="Parallax 1">
        <div class="mask rgba-black-strong">
            <div class="container flex-center text-center">
                <div class="row mt-5">
                    <div class="col-md-12 wow fadeIn mb-3">
                        <h1 class="display-3 mb-2 wow animated fadeInDownBig indigo-text font-weight-bold"><?=$about['title'];?></h1>
                        <h5 class="text-uppercase mb-3 mt-1 font-weight-bold wow text-white animated zoomIn" data-wow-delay=".5s"><?=$about['body'];?></h5>
                    </div>
                </div>
            </div>
        </div>
    </div>
<?php endforeach;?>

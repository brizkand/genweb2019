<h1 class='h1-responsive font-weight-bold text-center my-5 wow animated lightSpeedIn slow'><?= $title?></h1>

<div class='row d-flex justify-content-center'>
    <div class='col-md-8 col-xl-5 mb-4'>
        <div class='col-md-12 p-4 m-4 wow animated slower zoomIn'>
            <a href='<?=base_url('public/images/brochure_images/' . $brochure_item['image']);?>' class="btn btn-pink btn-md wow animated rubberBand delay-3s" download><i class="fa fa-download left"></i> Download</a>
            <a href='<?=site_url('brochure')?>' class="btn btn-pink btn-md wow animated swing delay-3s"><i class="fa fa-arrow-left left"></i> Go Back</a>
            <!-- Card -->
            <div class='card'>
                <img src="<?=base_url('public/images/brochure_images/' . $brochure_item['image']);?>" class="img-fluid">
            </div>
            <!-- Card -->
        </div>
    </div>
</div>
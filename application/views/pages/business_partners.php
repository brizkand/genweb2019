<h1 class='h1-responsive font-weight-bold text-center my-5 wow animated lightSpeedIn slow'><?= $title?></h1>

<div class='container'>
    <div class='row justify-content-md-center'>
        <div class='col-md-2 wow animated slideInDown slow'>
            <a href="<?=base_url('business_partners/all')?>" class='h5-responsive <?php if(($title == 'Genserv Business Partners') || ($title == 'All')):?>border-bottom border-primary font-weight-bold text-indigo <?php endif;?> text-capitalize'>all</a>
        </div>
        <div class='col-md-2 wow animated slideInUp slow'>
            <a href="<?=base_url('business_partners/'. 1)?>" class='h5-responsive <?php if($title == 'Elevator partner'):?>border-bottom border-primary font-weight-bold text-indigo <?php endif;?> text-capitalize'>elevator</a>
        </div>
        <div class='col-md-2 wow animated slideInDown slow'>
            <a href="<?=base_url('business_partners/' . 2)?>" class='h5-responsive <?php if($title == 'Floodgate partner'):?>border-bottom border-primary font-weight-bold text-indigo <?php endif;?> text-capitalize'>floodgate</a>
        </div>
        <div class='col-md-2 wow animated slideInUp slow'>
            <a href="<?=base_url('business_partners/' . 3 )?>" class='h5-responsive <?php if($title == 'Satellite partners'):?>border-bottom border-primary font-weight-bold text-indigo <?php endif;?> text-capitalize'>satellite</a>
        </div>
        <div class='col-md-2 wow animated slideInDown slow'>
            <a href="<?=base_url('business_partners/' . 4)?>" class='h5-responsive <?php if($title == 'Security and industrial partners'):?>border-bottom border-primary font-weight-bold text-indigo <?php endif;?> text-capitalize'>security and industrial</a>
        </div>
        <div class='col-md-2 wow animated slideInUp slow'>
            <a href="<?=base_url('business_partners/' . 5)?>" class='h5-responsive <?php if($title == 'Economic zone leisure partner'):?>border-bottom border-primary font-weight-bold text-indigo <?php endif;?> text-capitalize'>economic zone leisure</a>
        </div>    
    </div>
</div>


<!-- Section: Team v.4 -->
<section class="my-5">
    <!-- Grid row -->
    <div class="row justify-content-md-center mb-4">
        <!-- Grid column -->
        <?php foreach($partners as $partner):?>
        <div class="col-md-3 mb-4 <?=$partner['animation']?>">
            <!-- Rotating card -->
            <div class="card-wrapper">
                <div id="card-<?=$partner['id'];?>" class="card-rotating effect__click text-center w-100 h-100">
                    <!-- Front Side -->
                    <div class="face front">
                        <!-- Image -->
                        <div class="card-up">
                            <img class="card-img-top" src="<?=base_url('public/images/business_partners/bg.png');?>" alt="<?=$partner['company_name'];?>">
                        </div>
                        <!-- Avatar -->
                        <div class="avatar mx-auto white wow animated flip slower">
                            <img src="<?=base_url('public/images/business_partners/' . $partner['logo']);?>" class="rounded-circle img-fluid" alt="<?=$partner['company_name'];?>">
                        </div>
                        <!-- Content -->
                        <div class="card-body">
                            <h4 class="font-weight-bold mt-1 mb-3"><?=$partner['company_name'];?></h4>
                            <!-- Triggering button -->
                            <a class="rotate-btn grey-text" data-card="card-<?=$partner['id'];?>">
                            <i class="fa fa-repeat grey-text"></i>Read more</a>
                        </div>
                    </div>
                    <!-- Front Side -->

                    <!-- Back Side -->
                    <div class="face back">
                        <!-- Content -->
                        <div class="card-body">
                            <!-- Content -->
                            <h4 class="font-weight-bold mt-4 mb-2">
                            <strong>About <?=$partner['company_name'];?></strong>
                            </h4>
                            <hr>
                            <p><?=$partner['about'];?></p>
                            <!-- <a class='text-success' href="<?=site_url($partner['website'])?>" target='_blank'>Visit website</a> -->
                            <hr>
                            <!-- Triggering button -->
                            <a class="rotate-btn grey-text" data-card="card-<?=$partner['id'];?>">
                            <i class="fa fa-repeat grey-text"></i> Click here to rotate back</a>
                        </div>
                    </div>
                    <!-- Back Side -->
                </div>
            </div>
        </div>
        <?php endforeach;?>
        <!-- Rotating card -->
    </div>
<!-- Grid row -->
</section>
<!-- Section: Team v.4 -->


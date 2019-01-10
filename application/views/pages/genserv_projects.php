<h1 class='h1-responsive font-weight-bold text-center my-5 wow animated lightSpeedIn slow'><?= $title?></h1>

<div class='row justify-content-md-center mb-4'>
    <div class='col-md-2 wow animated slideInDown slow'>
        <a href="<?=base_url('genserv_projects/all')?>" class='h5-responsive text-capitalize <?php if(($title == 'Our Finished Projects') || ($title == 'All')):?>border-bottom border-primary font-weight-bold text-indigo <?php endif;?>'>All</a>
    </div>
    <?php foreach($categories as $category):?>
    <div class='col-md-2 wow animated slideInDown slow'>
        <a href="<?=base_url('genserv_projects/' . $category['product_id'])?>" class='h5-responsive text-capitalize <?php if($title == ucfirst($category['category'])):?>border-bottom border-primary font-weight-bold text-indigo <?php endif;?>'><?=$category['category'];?></a>
    </div>
    <?php endforeach;?>
</div>

<div class='row justify-content-md-center mb-4 p-4'>
    <?php foreach($projects as $project):?>
        <div class='col-md-3 mb-4 wow animated rollIn slower'>
            <!-- Card Wider -->
            <div class="card card-cascade wider" style='z-index: 0;'>
                <!-- Card image -->
                <div class="view view-cascade overlay">
                    <img  class="card-img-top" src="<?=base_url('public/images/genserv_projects/' . $project['project_image'])?>" alt="<?=$project['project_image']?>">
                    <a href="<?=base_url('genserv_projects/project_info/' . $project['id'])?>">
                        <div class="mask rgba-white-slight"></div>
                    </a>
                </div>
                <div class="card-body card-body-cascade text-center">

                    <!-- Title -->
                    <h4 class="h4-responsive card-title"><strong><?=$project['project_name']?></strong></h4>
                    <!-- Subtitle -->
                    <p class='wow animated slideInDown slow text-secondary'><?=ucwords($project['category'])?></p>
                    <p class='wow animated slideInRight slow'><?=$project['project_address']?></p>
                    <p><small class='wow animated swing slower'><?=$project['project_details']?></small></p>
                    <a href="<?=base_url('genserv_projects/project_info/' . $project['id'])?>" class="h5-responsive blue-text pb-2"><strong>View Project</strong></a>
                    <!-- Text -->
                </div>
            </div>
        </div>
    <?php endforeach;?>
</div>
<h1 class='h1-responsive font-weight-bold text-center my-5 wow animated lightSpeedIn slow'><?= $title?></h1>
<?php if(!empty($jobs)):?>
    <div class='row justify-content-md-center mb-4 p-4'>
        <?php foreach($jobs as $job):?>
            <div class='col-md-3 mb-4 wow animated rollIn slower'>
                <!-- Card Wider -->
                <div class="card card-cascade wider" style='z-index: 0;'>
                    <!-- Card image -->
                    <div class="view view-cascade overlay">
                        <img  class="card-img-top" src="<?=base_url('public/images/job_images/' . $job['image'])?>" alt="<?=$job['image']?>">
                        <a href="<?=base_url('jobs/index/' . $job['id'])?>">
                            <div class="mask rgba-white-slight"></div>
                        </a>
                    </div>
                    <div class="card-body card-body-cascade text-center">

                        <!-- Title -->
                        <h4 class="h4-responsive card-title"><strong><?=$job['title']?></strong></h4>
                        <!-- Subtitle -->
                        <p class='wow animated slideInDown slow text-secondary'><?=word_limiter($job['description'], 5, '......');?></p>
                        <p class='wow animated slideInRight slow'><?=word_limiter($job['info'], 5, '......');?></p>
                        <a href="<?=base_url('jobs/index/' . $job['id'])?>" class="h5-responsive blue-text pb-2"><strong>Job Details</strong></a>
                        <!-- Text -->
                    </div>
                </div>
            </div>
        <?php endforeach;?>
    </div>
<?php else: echo'<h2 class="h2-responsive font-weight-bold text-center text-danger my-5 wow animated wobble slower">There is no JOBS available right now!</h2>';?>
<?php endif;?>

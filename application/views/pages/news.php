<h1 class='h1-responsive font-weight-bold text-center my-5 wow animated lightSpeedIn slow'><?= $title?></h1>
<?php if(!empty($news)):?>
    <div class='row justify-content-md-center mb-4 p-4'>
        <?php foreach($news as $news_item):?>
            <div class='col-md-3 mb-4 wow animated rollIn slower'>
                <!-- Card Wider -->
                <div class="card card-cascade wider" style='z-index: 0;'>
                    <!-- Card image -->
                    <div class="view view-cascade overlay">
                        <img  class="card-img-top" src="<?=base_url('public/images/news_images/' . $news_item['image'])?>" alt="<?=$news_item['image']?>">
                        <a href="<?=base_url('news/index/' . $news_item['id'])?>">
                            <div class="mask rgba-white-slight"></div>
                        </a>
                    </div>
                    <div class="card-body card-body-cascade text-center">

                        <!-- Title -->
                        <h4 class="h4-responsive card-title"><strong><?=$news_item['title']?></strong></h4>
                        <!-- Subtitle -->
                        <p class='wow animated slideInDown slow text-secondary'><?=word_limiter($news_item['description'], 5, '......');?></p>
                        <p class='wow animated slideInRight slow'><?=word_limiter($news_item['info'], 5, '......');?></p>
                        <a href="<?=base_url('news/index/' . $news_item['id'])?>" class="h5-responsive blue-text pb-2"><strong>View Details</strong></a>
                        <!-- Text -->
                    </div>
                </div>
            </div>
        <?php endforeach;?>
    </div>
<?php else: echo'<h2 class="h2-responsive font-weight-bold text-center text-danger my-5 wow animated wobble slower">There is no NEWS available right now!</h2>';?>
<?php endif;?>

<h1 class='h1-responsive font-weight-bold text-center my-5 wow animated lightSpeedIn slow'><?= $title?></h1>

<div class='container'>
    
    <?php if($this->session->flashdata('success_email')):?>
        <div class="mb-4 alert alert-success alert-dismissible fade show" role="alert">
            <strong class='text-success'><?php echo $this->session->flashdata('success_email');?></strong>
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
    <?php endif;?>
    <?php if(!empty(validation_errors())):?>
        <div class="mb-4 alert alert-danger alert-dismissible fade show" role="alert">
            <strong class='text-danger'><?=validation_errors();?></strong>
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
    <?php endif;?>

    <div class="row my-4"> 
        <div class="col-lg-5 mb-lg-0 mb-4 wow animated slideInLeft slow">
            <div class="card">
                <div class="card-body">
                    <?php echo form_open('contact_us/send_mail')?>
                    <div class="form-header blue accent-1 wow animated rubberBand slow">
                        <h3 class="mt-2 h3-responsive"><i class="fa fa-envelope"></i> Write to us:</h3>
                    </div>
                    <p class="dark-grey-text lead">All fields are required!</p>
                    <!-- Body -->
                    <div class="md-form">
                        <i class="fa fa-user prefix grey-text"></i>
                        <input type="text" name='name' class="form-control" required>
                        <label for="form-name">Your name</label>
                    </div>
                    <div class="md-form">
                        <i class="fa fa-envelope prefix grey-text"></i>
                        <input type="email" name='email' class="form-control" required>
                        <label for="form-email">Your email</label>
                    </div>
                    <div class="md-form">
                        <i class="fa fa-tag prefix grey-text"></i>
                        <input type="text" name='subject' class="form-control" required>
                        <label for="form-Subject">Subject</label>
                    </div>
                    <div class="md-form">
                        <i class="fa fa-pencil prefix grey-text"></i>
                        <textarea type="text" name='message' class="form-control md-textarea" rows="3"></textarea>
                        <label for="form-text">Your Message</label>
                    </div>
                    <div class="text-center">
                        <button class="btn btn-light-blue">Submit</button>
                    </div>
                    <?php echo form_close();?>
                </div>
            </div>
        </div>
        
        <div class="col-lg-7">
            <h3 class='wow animated slideInRight slow'>Why talking to Genserv International Inc is <strong>IMPORTANT</strong></h3>
            <hr>
            <p class='wow animated slideInDown slow lead'>Customer concerns are important to us and we value most our customers.
                Genserv is always here to serve you and we're happy if we can help 
                you from our products and services that we offer.  
                Please feel free to talk to us.
            </p>
            <!-- Buttons-->
            <div class="row text-center">
                <div class="col-md-4 wow animated swing slower">
                    <a class="btn-floating blue accent-1">
                    <i class="fa fa-map-marker"></i>
                    </a>
                    <p>Unit 302 Global Tower (Cianno Building) Gen Mascardo Brgy. 
                        Bangkal Makati City, 1233</p>
                    <p class="mb-md-0">Philippines</p>
                </div>
                <div class="col-md-4 wow animated swing slower">
                    <a class="btn-floating blue accent-1">
                    <i class="fa fa-phone"></i>
                    </a>
                    <p>(632) 887 8137</p>
                    <p>(632) 845 2818</p>
                    <p class="mb-md-0">Mon - Fri, 9:00am-6:00pm</p>
                    <p class="mb-md-0">Saturday, 9:00am-4:00pm</p>
                </div>
                <div class="col-md-4 wow animated swing slower">
                    <a class="btn-floating blue accent-1">
                    <i class="fa fa-envelope"></i>
                    </a>
                    <p>info@genserv-ph.com.com</p>
                </div>
            </div>
        </div>
    </div>
</div>
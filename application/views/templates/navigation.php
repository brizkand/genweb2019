<!--Main Navigation-->
<header class="stickyTop">
    <!--Navbar-->
    <nav class="navbar navbar-expand-lg navbar-dark ripe-malinka-gradient scrolling-navbar">
        <!-- Navbar brand -->
        <a class="navbar-brand animated flip slower infinite" href="#">
            <img class="circle" src="<?=base_url('public/logo/genserv-logo.png');?>" alt="Genserv Logo" style="width:40px;">
        </a>
        <!-- Collapse button -->
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#basicExampleNav" aria-controls="basicExampleNav"
            aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <!-- Collapsible content -->
        <div class="collapse navbar-collapse" id="basicExampleNav">
            <!-- Links -->
            <ul class="navbar-nav mr-auto">
                <li class="nav-item <?php if($active_page == 1):?>active<?php endif;?>">
                    <a class="nav-link" href="<?=base_url('home')?>">Home
                    <span class="sr-only">(current)</span>
                    </a>
                </li>
                <!-- Dropdown -->
                <li class="nav-item dropdown <?php if($active_page == 2):?>active<?php endif;?>">
                    <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true"
                    aria-expanded="false">Who we are</a>
                    <div class="dropdown-menu dropdown-primary" aria-labelledby="navbarDropdownMenuLink">
                        <a class="dropdown-item" href="<?=base_url('about')?>">About Us</a>
                        <a class="dropdown-item" href="<?=base_url('genserv_story')?>">Genserv Story</a>
                        <a class="dropdown-item" href="<?=base_url('business_partners');?>">Business Partners</a>
                        <a class="dropdown-item" href="<?=base_url('genserv_map');?>">Our Location</a>
                    </div>
                </li>
                <!-- Dropdown -->
                <li class="nav-item dropdown <?php if($active_page == 3):?>active<?php endif;?>">
                    <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true"
                    aria-expanded="false">Our Products and Services</a>
                    <div class="dropdown-menu dropdown-primary" aria-labelledby="navbarDropdownMenuLink">
                        <a class="dropdown-item" href="<?=base_url('satellite_products')?>">Satellite and Digital Set-up Box Products</a>
                        <a class="dropdown-item" href="<?=base_url('elevator_products')?>">Elevator Products</a>
                        <a class="dropdown-item" href="<?=base_url('industrial_and_security_products')?>">Industrial and Security Products</a>
                        <a class="dropdown-item" href="<?=base_url('floodgate_products')?>">Flood Control System Products</a>
                    </div>
                </li>
                <!-- Dropdown -->
                <!-- <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true"
                    aria-expanded="false">Our Finished Projects</a>
                    <div class="dropdown-menu dropdown-primary" aria-labelledby="navbarDropdownMenuLink">
                        <a class="dropdown-item" href="#">Elevator Finished Projects</a>
                        <a class="dropdown-item" href="#">Satellite Finished Projects</a>
                        <a class="dropdown-item" href="#">Internet Satellite Finised Projects</a>
                        <a class="dropdown-item" href="#">Industrial and Security Finished Projects</a>
                        <a class="dropdown-item" href="#">Flood Gate Control Finised Projects</a>
                    </div>
                </li> -->
                <li class="nav-item <?php if($active_page == 4):?>active<?php endif;?>">
                    <a class="nav-link" href="<?=base_url('genserv_projects');?>">Our Finished Projects
                    <span class="sr-only">(current)</span>
                    </a>
                </li>
                <li class="nav-item <?php if($active_page == 5):?>active<?php endif;?>">
                    <a class="nav-link" href="<?=base_url('brochure');?>">Downloads
                    <span class="sr-only">(current)</span>
                    </a>
                </li>
            </ul>
            <!--Left navigation-->
            <ul class="navbar-nav ml-auto">
                <!-- Dropdown -->
                <li class="nav-item dropdown <?php if($active_page == 6):?>active<?php endif;?>">
                    <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true"
                    aria-expanded="false">Let's Connect</a>
                    <div class="dropdown-menu dropdown-primary" aria-labelledby="navbarDropdownMenuLink">
                        <a class="dropdown-item" href="<?=base_url('contact_us');?>">Contact Us</a>
                        <a class="dropdown-item" href="<?=base_url('jobs');?>">Jobs @ Genserv</a>
                        <a class="dropdown-item" href="<?=base_url('news');?>">News</a>
                    </div>
                </li>
            </ul>
            <!-- Links -->
        </div>
        <!-- Collapsible content -->
    </nav>
    <!--/.Navbar-->
</header>
<div class='container-fluid'>

    
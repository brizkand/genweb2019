    </div>
        <div class="bg-light text-dark text-center p-3 wow animated fadeInDownBig"> 
            <footer>Copyright <em>&copy; <?php echo date('Y');?> </em>Genserv International, Inc. All Rights Reserved</footer>
            <p class="text-center"><abbr class='text-info' title="Kevin Holgado (Web Developer)">K.H.</abbr></p>
        </div>
        <!-- SCRIPTS -->
        <!-- JQuery -->
        <script type="text/javascript" src="<?=base_url('public/mdb_hack/js/jquery-3.3.1.min.js');?>"></script>
        <!-- Bootstrap tooltips -->
        <script type="text/javascript" src="<?=base_url('public/mdb_hack/js/popper.min.js');?>"></script>
        <!-- Bootstrap core JavaScript -->
        <script type="text/javascript" src="<?=base_url('public/mdb_hack/js/bootstrap.min.js');?>"></script>
        <!-- MDB core JavaScript -->
        <script type="text/javascript" src="<?=base_url('public/mdb_hack/js/mdb.min.js');?>"></script>

        <script>
            // object-fit polyfill run
            objectFitImages();

            /* init Jarallax */
            jarallax(document.querySelectorAll('.jarallax'));

            jarallax(document.querySelectorAll('.jarallax-keep-img'), {
                keepImg: true,
            });
        </script>
        <script>
            new WOW().init();
        </script>
</body>
</html>
<h1 class='h1-responsive font-weight-bold text-center my-5 wow animated lightSpeedIn slow'><?= $title?></h1>

<div class="view jarallax" style="height: 100vh;">
        <img class="jarallax-img" src="<?=base_url('public/images/genserv_map/map.png');?>" alt="Parallax 1">
        <div class="mask rgba-white-strong">
            <div class="container flex-center text-center rounded">
                <div class="row mt-5 rounded">
                    <div class="col-md-12 wow fadeIn mb-3">
                        <div class="card m-4 wow animated tada slow">
                            <div id= "map" style="width:100%;height:500px;">
                                <script>
                                    function myMap() {
                                    var myCenter = new google.maps.LatLng(14.5466678,121.010098);
                                    var mapCanvas = document.getElementById("map");
                                    var mapOptions = {center: myCenter, zoom: 18};
                                    var map = new google.maps.Map(mapCanvas, mapOptions);
                                    var marker = new google.maps.Marker({position:myCenter});
                                    marker.setMap(map);
                                    }
                                </script>
                                <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBaSwaF8fRfQEmk3REvLJJ6l8F5w_0fKmM&callback=myMap"></script>
                            </div>
                            <br>
                            <address class="text-center p-1 text-info wow animated fadeInUpBig slow">Unit 302 Global Tower(Cianno Building) Gen. Mascardo Corner M. Reyes St. Brgy. Bangkal, Makati City</address>
                        </div>
                        <h5 class="text-uppercase mb-3 mt-1 font-weight-bold wow text-dark animated zoomIn" data-wow-delay=".5s">Please visit our office, we are happy to serve you here.</h5>
                    </div>
                </div>
            </div>
        </div>
    </div>
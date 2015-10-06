var container = document.getElementById('map');
var options = {
	center: new daum.maps.LatLng(33.454701, 126.565067),
	level: 4
};

var map = new daum.maps.Map(container, options);

var markerPosition  = new daum.maps.LatLng(33.454701, 126.565067); 

var marker = new daum.maps.Marker({
    position: markerPosition
});

marker.setMap(map);
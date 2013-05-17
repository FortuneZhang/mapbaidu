	url:https://rubygems.org/gems/mapbaidu

	0.0.1
	use map = MapBaiDu.new(ak ,city,address) to create  an object
   
    map.result   all data from baidu 

    map.setCity (city)
	
	map.setAddress(address)

	map.get_location 

	map.get_lng
	
	map.get_lat

	0.0.2

	map .round (distance) distance : 100 ,200 ,... result :[[112.9900,38.1234],[lng,lat]...[lng,lat]]

	map.round_to_i (distance) distance:100,200.... result :[112.9900038.1234,lnglat...lnglat]



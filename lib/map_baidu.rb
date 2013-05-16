require 'net/http'
class MapBaiDu

  def initialize (ak, city, address)
    if (ak ==nil)
      return nil
    end
    @url = URI.parse('http://api.map.baidu.com/geocoder/v2/')
    @pi = Math::PI
    @R = 6370996.81
    @ak = ak
    @city = city
    @address = address
    @result = '';
  end

  def setCity(city)
    @city = city
  end

  def setAddress(address)
    @address = address
  end

  def result
    Net::HTTP.start(@url.host, @url.port) do |http|
      req = Net::HTTP::Post.new(@url.path)
      req.set_form_data({'address' => @address, 'city' => @city, 'output' => 'json',
                         'ak' => @ak})
      puts JSON.parse http.request(req).body
      @result = JSON.parse http.request(req).body
      return @result
    end
  end


  def get_lng
    return self.result()['result']['location']['lng']
  end

  def get_lat
    return self.result()['result']['location']['lat']
  end

  def get_location
    return self.result()['result']['location']
  end

end




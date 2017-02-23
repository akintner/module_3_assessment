class BestBuyService
  def initialize
    @api_key = krmeujcx6hn477xn5gma4pmn
  end

  def self.nearest_to_zip(zip)
    response = Faraday.get("http://api.bestbuy.com/v1/stores?format=json&postalCode=#{zip}&show=phone,storeId,city,distance,storeType,longName&apiKey=#{@api_key}")
    JSON.parse(response.body, symbolize_names: true)
    byebug
  end
end
class BestBuyService
  def initialize
    @api_key = "krmeujcx6hn477xn5gma4pmn"
  end

  def nearest_to_sip(zip)
    response = Faraday.get("https://api.bestbuy.com/v1/stores?format=json&postalCode=#{zip}&show=phone,storeId,city,distance,storeType,longName&apiKey=#{@api_key}")
    JSON.parse(response.body, symbolize_names: true)
  end
end
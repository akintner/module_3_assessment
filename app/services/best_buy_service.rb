class BestBuyService
  def initialize
    @api_key = krmeujcx6hn477xn5gma4pmn
  end

  def self.nearest_to_zip(zip)
    response = Faraday.get("http://api.bestbuy.com/v1/stores(area(#{zip},25))?format=json&pageSize=1&apiKey=krmeujcx6hn477xn5gma4pmn")
    JSON.parse(response.body, symbolize_names: true)
    byebug
  end
end
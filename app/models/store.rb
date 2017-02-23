class Store
  attr_reader :id, :name, :city, :distance, :type, :phone

  def initialize(attributes)
    @id       = attributes[:storeId]
    @name     = attributes[:name]
    @city     = attributes[:city]
    @distance = attributes[:distance]
    @type     = attributes[:storeType]
    @phone    = attributes[:phone]
  end

  def nearest_to_zip
     BestBuyService.nearest_to_zip(zipcode).map do |store|
      new(store)
    end
  end

end
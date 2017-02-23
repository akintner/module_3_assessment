class Store
  attr_reader :id, :name, :city, :distance, :type, :phone

  def initialize(attributes)
    @id       = attributes[:storeId]
    @name     = attributes[:longName]
    @city     = attributes[:city]
    @distance = attributes[:distance]
    @type     = attributes[:storeType]
    @phone    = attributes[:phone]
  end

  def self.nearest_to_zip(zip)
     BestBuyService.nearest_to_zip(zip).map do |store|
      new(store)
    end
  end

end
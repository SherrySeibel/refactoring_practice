# require "csv"
# require "pp"

class HotelFinder
  def initialize(hotel_database)
    @hotel_database = hotel_database
  end

  def find_hotel
    display_hotel_name
  end

  private

  def display_hotel_name
    hotel_search = @hotel_database.foreach("hotels.csv", headers: true) do |row|
      puts row[0]
    end
  end
end

hotel_finder = HotelFinder.new(CSV)
hotel_finder.find_hotel
